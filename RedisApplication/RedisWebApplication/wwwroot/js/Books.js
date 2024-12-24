const apiUrl = $('#apiUrl').val();  

$(document).ready(function () { 
    loadBooks();
    setupSearch();
});

function setupSearch() {
    let searchTimer;
    $('#searchInput').on('input change', function () {
        clearTimeout(searchTimer);
        searchTimer = setTimeout(SearchBook, 500);
    });
}
function SearchBook() {
    const searchTerm = $('#searchInput').val().trim();
 
    $.ajax({
        url: `${apiUrl}/books/search?query=${searchTerm}`,
        method: 'GET',
        success: function (response) {
            let rows = '';
            let stt = 0;
            response.forEach(book => {
                stt++;
                rows += `<tr>
                           <td>${stt}</td>
                           <td>${book.title}</td>
                           <td>${book.author}</td>
                           <td>${book.publishYear}</td> 
                           <td>
                              <button style="color:#fff" class="button btn btn-info btn-default btnViewDetails" data-id="${book.id}">Xem chi tiết</button>
                              <button style="color:#fff" class="button btn btn-warning btn-default btnEdit" data-id="${book.id}">Sửa</button>
                              <button style="color:#fff" class="button btn btn-danger btn-default btnDelete" data-id="${book.id}">Xóa</button>
                           </td>
                           </tr>`;
            });
            $('#bookTableBody').html(rows);
             
        },
        error: function (xhr) {
            $('#bookTableBody').empty(); 
            $('#searchResultCount').html(xhr.responseJSON.message || 'Không tìm thấy kết quả');
        }
    });
}

function loadBooks() {
    $.ajax({
        url: `${apiUrl}/Books`,
        method: 'GET',
        success: function (data) { 
            let rows = '';
            let stt = 0;
            data.forEach(book => {
                stt++;
                rows += `<tr>
                           <td>${stt}</td>
                           <td>${book.title}</td>
                           <td>${book.author}</td>
                           <td>${book.publishYear}</td> 
                           <td>
                              <button style="color:#fff" class="button btn btn-info btn-default btnViewDetails" data-id="${book.id}">Xem chi tiết</button>
                              <button style="color:#fff" class="button btn btn-warning btn-default btnEdit" data-id="${book.id}">Sửa</button>
                              <button style="color:#fff" class="button btn btn-danger btn-default btnDelete" data-id="${book.id}">Xóa</button>
                           </td>
                           </tr>`;
            });
            $('#bookTableBody').html(rows);
        },
        error: function () {
            alert('Không thể tải danh sách.');
        }
    });
}

function loadGenre(value) {
    $.ajax({
        url: `${apiUrl}/Genre/`,
        method: 'GET',
        success: function (res) {
            let options = '<option value="0">Chọn thể loại sách</option>';
            res.forEach(r => {
                options += `<option value="${r.id}">${r.name}</option>`;
            });
            $('#bookGenre').html(options);
            if (value) $('#bookGenre').val(value)
        },
        error: function () {
            alert('Không thể tải danh sách vai trò.');
        }
    });
}


//btnViewDetails
$(document).on('click', '.btnViewDetails', function () {
    let bookId = $(this).data('id');
    $.ajax({
        url: `${apiUrl}/Books/${bookId}`,
        method: 'GET',
        success: function (book) {
            $('#bookDetailsModal .modal-body').html(`
                          <p><strong>Tên sách:</strong> ${book.title}</p>
                          <p><strong>Tác giả:</strong> ${book.author}</p>
                          <p><strong>Năm xuất bản:</strong> ${book.publishYear}</p>
                          <p><strong>Mã ISBN:</strong> ${book.isbn}</p>
                          <p><strong>Số lượng:</strong> ${book.quantity}</p>
                          <p><strong>Thể loại:</strong> ${book.genreName}</p>
                           <p><strong>Giới thiệu:</strong> ${book.abstract}</p>
                          
                      `);
            $('#bookDetailsModal').modal('show');
        },
        error: function () {
            alert('Không thể tải thông tin chi tiết người dùng.');
        }
    });
});

//btnAddbook
$('#btnAddBook').click(function () {
    $('#bookModalLabel').text('THÊM SÁCH MỚI'); 
    $('#bookForm')[0].reset();
    $('#bookId').val(0);
    $('#bookModal').modal('show'); 
    loadGenre();
});

//btnEdit
$(document).on('click', '.btnEdit', function () {
    let bookId = $(this).data('id');
    $.ajax({
        url: `${apiUrl}/Books/${bookId}`,
        method: 'GET',
        success: function (book) { 
            $('#bookId').val(book.id);
            $('#bookTitle').val(book.title);
            $('#bookAuthor').val(book.author);
            $('#bookpublishYear').val(book.publishYear);
            $('#bookISBN').val(book.isbn);
            $('#bookQuantity').val(book.quantity);
            $('#bookAbstract').val(book.abstract); 
            loadGenre(book.genreId);
            $('#bookModalLabel').text('CẬP NHẬT THÔNG TIN SÁCH');
             

            $('#bookModal').modal('show');
        },
        error: function () {
            alert('Không thể lấy thông tin sách.');
        }
    });
});

$('#bookForm').submit(function (e) {
    e.preventDefault();
    let id = Number($('#bookId').val());
    let method = id > 0 ? 'PUT' : 'POST';
    let url = id > 0 ? `${apiUrl}/books/${id}` : `${apiUrl}/books`;
    const book = {
        "id": id,
        "title": $('#bookTitle').val(),
        "author": $('#bookAuthor').val(),
        "isbn": $('#bookISBN').val(),
        "abstract": $('#bookAbstract').val(),
        "genreId": $('#bookGenre').val(),
        "publishYear": $('#bookpublishYear').val(),
        "quantity": $('#bookQuantity').val(),
        "isAvailable": true,
    };
    console.log(book);
    $.ajax({
        url: url,
        method: method,
        contentType: 'application/json',
        data: JSON.stringify(book),
        success: function (response) {
            $('#bookModal').modal('hide'); 
            loadBooks();
            alert("Thao tác thành công!")
        },
        error: function (xhr, status, error) {
            let errorMessage = 'Không thể lưu thông tin sách.'; 
            if (xhr.responseJSON) {
                if (xhr.responseJSON.message) {
                    errorMessage = xhr.responseJSON.message;
                } 
                if (xhr.responseJSON.errors && xhr.responseJSON.errors.length > 0) {
                    errorMessage += '\n' + xhr.responseJSON.errors.join('\n');
                }
            } 
            alert(errorMessage);
        }
    });
});

//btnDelete
$(document).on('click', '.btnDelete', function () {
    const id = $(this).data('id');
    if (confirm('Bạn có chắc chắn muốn xóa sách này?')) {
        $.ajax({
            url: `${apiUrl}/books/${id}`,
            method: 'DELETE',
            success: function () {
                loadBooks();
                alert('Xóa sách thành công!')
            },
            error: function () {
                alert('Không thể xóa sách.');
            }
        });
    }
});
