const apiUrl = $('#apiUrl2').val();
const apiUrl2 = $('#apiUrl').val();

$(document).ready(function () {
    loadtransactions(); 
});
  
//btnAddtransaction
$('#btnAddtransaction').click(function () {
    $('#transactionModalLabel').text('THÊM CHI TIẾT MƯỢN SÁCH');
    $('#transactionForm')[0].reset();
    $('#transactionId').val(0);
    $('#transactionModal').modal('show');
    loadUser(); loadBook();
});
function loadUser(value) { 
    $.ajax({
        url: `${apiUrl2}/Users/GetUserList`,
        method: 'GET',
        success: function (res) { 
            let options = '<option value="0">Chọn người mượn</option>';
            res.forEach(r => {
                options += `<option value="${r.id}">${r.userName}</option>`;
            });
            $('#sluser').html(options);
            if (value) $('#sluser').val(value)
        },
        error: function () {
            alert('Không thể tải danh sách người mượn.');
        }
    });
}
function loadBook(value) {
    $.ajax({
        url: `${apiUrl}/Books`,
        method: 'GET',
        success: function (res) { 
            let options = '<option value="0">Chọn sách mượn</option>';
            res.forEach(r => {
                options += `<option value="${r.id}">${r.title}</option>`;
            });
            $('#slbook').html(options);
            if (value) $('#slbook').val(value)
        },
        error: function () {
            alert('Không thể tải danh sách người mượn.');
        }
    });
}

function loadtransactions() {
    $.ajax({
        url: `${apiUrl}/BorrowRecords`,
        method: 'GET',
        success: function (data) {
            let rows = '';
            data.forEach(t => { 
                    const borrowDate = new Date(t.borrowDate).toLocaleDateString('en-GB');   
                let isReturned = t.isReturned ? '✔' : '✘';


             rows += `<tr>
               <td>${t.id}</td>
               <td>${t.bookTitle}</td>
               <td>${t.userName}</td>
               <td>${borrowDate}</td>  
               <td class="text-center">${isReturned}</td> 
               <td>
                  <button style="color:#fff" class="button btn btn-info btn-default btnViewDetails" data-id="${t.id}">Xem chi tiết</button>
                  <button style="color:#fff" class="button btn btn-warning btn-default btnEdit" data-id="${t.id}">Sửa</button>
                  <button style="color:#fff" class="button btn btn-danger btn-default btnDelete" data-id="${t.id}">Xóa</button>
               </td>
               </tr>`;
               

            });
            $('#transactionTableBody').html(rows);
        },
        error: function () {
            alert('Không thể tải danh sách.');
        }
    });
}
  
//btnViewDetails
$(document).on('click', '.btnViewDetails', function () {
    let transactionId = $(this).data('id');
    $.ajax({
        url: `${apiUrl}/BorrowRecords/${transactionId}`,
        method: 'GET',
        success: function (t) { 
            const borrowDate = new Date(t.borrowDate).toLocaleDateString('en-GB');
            const dueDate = new Date(t.dueDate).toLocaleDateString('en-GB');
            const returnDate = t.returnDate ? new Date(t.returnDate).toLocaleDateString('en-GB') : '';

            let isReturned = (t.isReturned === true || t.isReturned === 1) ? '✔' : '✘';

            $('#transactionDetailsModal .modal-body').html(`
                          <p><strong>Tên sách:</strong> ${t.bookTitle}</p>
                          <p><strong>Người mượn:</strong> ${t.userName}</p>
                          <p><strong>Ngày mượn:</strong> ${borrowDate}</p>
                          <p><strong>Ngày đến hạn:</strong> ${dueDate}</p>
                          <p><strong>Ngày trả:</strong> ${returnDate}</p>
                          <p><strong>Đã trả:</strong> ${isReturned}</p>  
                      `);
            $('#transactionDetailsModal').modal('show');
        },
        error: function () {
            alert('Không thể tải thông mượn sách tin chi tiết.');
        }
    });
});

function formatDateToInputDate(dateString) {
    let date = new Date(dateString);
    let year = date.getFullYear();
    let month = date.getMonth() + 1;  
    let day = date.getDate();
     
    month = month < 10 ? '0' + month : month;
    day = day < 10 ? '0' + day : day;
     
    return year + '-' + month + '-' + day;
}
 


//btnEdit
$(document).on('click', '.btnEdit', function () {
    let transactionId = $(this).data('id');
    $.ajax({
        url: `${apiUrl}/BorrowRecords/${transactionId}`,
        method: 'GET',
        success: function (t) {
            
            $('#transactionId').val(t.id);
            $('#txtBorrowDate').val(formatDateToInputDate(t.borrowDate));
            $('#txtDueDate').val(formatDateToInputDate(t.dueDate));
            $('#txtReturnDate').val(formatDateToInputDate(t.returnDate));
            loadUser(t.userId); loadBook(t.bookId);
            $('#transactionModalLabel').text('CẬP NHẬT THÔNG TIN MƯỢN SÁCH');
            $('#sltra').val(t.isReturned ? 1 : 0);


            $('#transactionModal').modal('show');
        },
        error: function () {
            alert('Không thể lấy thông tin sách.');
        }
    });
});

$('#transactionForm').submit(function (e) {
    e.preventDefault();
    let id = Number($('#transactionId').val());
    let method = id > 0 ? 'PUT' : 'POST';
    let url = id > 0 ? `${apiUrl}/BorrowRecords/${id}` : `${apiUrl}/BorrowRecords`;
    const transaction = {
        "id": id,
        "userId": $('#sluser').val(),
        "bookId": $('#slbook').val(),
        "borrowDate": $('#txtBorrowDate').val(),
        "dueDate": $('#txtDueDate').val(),
        "returnDate": $('#txtReturnDate').val(),
        "isReturned": $('#sltra').val() === '1',
    };
    console.log(transaction);
    $.ajax({
        url: url,
        method: method,
        contentType: 'application/json',
        data: JSON.stringify(transaction),
        success: function (response) {
            $('#transactionModal').modal('hide');
            loadtransactions();
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
    if (confirm('Bạn có chắc chắn muốn xóa thông tin này?')) {
        $.ajax({
            url: `${apiUrl}/BorrowRecords/${id}`,
            method: 'DELETE',
            success: function () {
                loadtransactions();
                alert('Xóa sách thành công!')
            },
            error: function () {
                alert('Không thể xóa sách.');
            }
        });
    }
});
