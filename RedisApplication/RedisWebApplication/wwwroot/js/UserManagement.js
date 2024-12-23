const apiUrl = $('#apiUrl').val();
$(document).ready(function () {
    loadUsers();
    loadRoles();
    setupSearch();
});
function setupSearch() {
    let searchTimer; 
    $('#searchInput').on('input change', function () {
        clearTimeout(searchTimer);
        searchTimer = setTimeout(SearchUser, 500);
    });
}
function SearchUser() {
    const searchTerm = $('#searchInput').val().trim(); 
    if (!searchTerm) {
        loadUsers(); 
        return;
    }

    $.ajax({
        url: apiUrl + '/Users/SearchUsers',
        method: 'GET',
        data: {
            searchTerm: searchTerm
        },
        success: function (response) {
            let rows = '';
            response.users.forEach(user => {
                rows += `<tr>
                           <td>${user.id}</td>
                           <td>${user.name}</td>
                           <td>${user.email}</td>
                           <td>${user.role}</td>
                           <td>
                              <button class="button btn btn-info btn-default btnViewDetails" data-id="${user.id}">Xem chi tiết</button>
                              <button class="button btn btn-warning btn-default btnEdit" data-id="${user.id}">Sửa</button>
                              <button class="button btn btn-danger btn-default btnDelete" data-id="${user.id}">Xóa</button>
                           </td>
                           </tr>`;
            });
            $('#userTableBody').html(rows);
             
        },
        error: function (xhr) {
            $('#userTableBody').empty(); 
        }
    });
}

function loadUsers() {
    $.ajax({
        url: apiUrl + '/Users/GetUserList',
        method: 'GET',
        success: function (data) {
            let rows = '';
            data.forEach(user => {
                rows += `<tr>
                           <td>${user.id}</td>
                           <td>${user.userName}</td>
                           <td>${user.email}</td>
                           <td>${user.roleName}</td>
                           <td>
                              <button style="color:#fff" class="button btn btn-info btn-default btnViewDetails" data-id="${user.id}">Xem chi tiết</button>
                              <button style="color:#fff" class="button btn btn-warning btn-default btnEdit" data-id="${user.id}">Sửa</button>
                              <button style="color:#fff" class="button btn btn-danger btn-default btnDelete" data-id="${user.id}">Xóa</button>
                           </td>
                           </tr>`;
            });
            $('#userTableBody').html(rows);
        },
        error: function () {
            alert('Không thể tải danh sách người dùng.');
        }
    });
}

function loadRoles() {
    $.ajax({
        url: apiUrl + '/Users/GetRoles',
        method: 'GET',
        success: function (roles) {
            let options = '';
            roles.forEach(role => {
                options += `<option value="${role.id}">${role.name}</option>`;
            });
            $('#userRole').html(options);
        },
        error: function () {
            alert('Không thể tải danh sách vai trò.');
        }
    });
}

$(document).on('click', '.btnViewDetails', function () {
    const userId = $(this).data('id');
    $.ajax({
        url: `${apiUrl}/users/${userId}/GetUserById`,
        method: 'GET',
        success: function (user) {
            $('#userDetailsModal .modal-body').html(`
                          <p><strong>Họ và tên:</strong> ${user.userName}</p>
                          <p><strong>Email:</strong> ${user.email}</p>
                          <p><strong>Vai trò:</strong> ${user.roleName}</p>
                          <p><strong>Địa chỉ:</strong></p>
                          <ul>
                              ${user.addresses.map(address => `<li>${address.fullAddress}, ${address.city}</li>`).join('')}
                          </ul>
                      `);
            $('#userDetailsModal').modal('show');
        },
        error: function () {
            alert('Không thể tải thông tin chi tiết người dùng.');
        }
    });
});

$(document).on('click', '.btnDelete', function () {
    const id = $(this).data('id');
    if (confirm('Bạn có chắc chắn muốn xóa người dùng này?')) {
        $.ajax({
            url: `${apiUrl}/Users/${id}/Deactivate`,
            method: 'PUT',
            success: function () {
                loadUsers();
                alert('Xóa người dùng thành công!')
            },
            error: function () {
                alert('Không thể xóa người dùng.');
            }
        });
    }
});

$('#btnAddUser').click(function () {
    $('#userModalLabel').text('Thêm người dùng');
    $('#userForm')[0].reset();
    $('#userId').val('');
    $('#userModal').modal('show');
    $('#divdiachi').hide();
});

//userForm
$(document).on('click', '.btnEdit', function () {
    const id = $(this).data('id'); 
    $.ajax({
        url: `${apiUrl}/users/${id}/GetUserById`,
        method: 'GET',
        success: function (user) {
            currentUserId = user.id;
            $('#userId').val(user.id);
            $('#userName').val(user.userName);
            $('#userEmail').val(user.email);
            $('#userRole').val(user.roleId);
            $('#addressUserId').val(id);
            $('#divdiachi').show();
            $('#userModalLabel').text('CẬP NHẬT THÔNG TIN NGƯỜI DÙNG');
             
            loadUserAddresses(user.id);

            $('#userModal').modal('show');
        },
        error: function () {
            alert('Không thể lấy thông tin người dùng.');
        }
    });
});

$('#userForm').submit(function (e) {
    e.preventDefault();
    const id = $('#userId').val();
    const method = id ? 'PUT' : 'POST';
    const url = id ? `${apiUrl}/users/${id}/UpdateInfo` : `${apiUrl}/Users/AddUser`;
    const user = {
        name: $('#userName').val(),
        email: $('#userEmail').val(),
        roleId: $('#userRole').val(),
        Password: "password"
    };
    console.log(user)
    $.ajax({
        url: url,
        method: method,
        contentType: 'application/json',
        data: JSON.stringify(user),
        success: function (response) {
            $('#userModal').modal('hide');
            $('#addressUserId').val(response.user.id);
            loadUsers();
            alert("Thao tác thành công.")
        },
        error: function (xhr, status, error) {
            let errorMessage = 'Không thể lưu thông tin người dùng.';

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

function loadUserAddresses(userId) {
    $.ajax({
        url: `${apiUrl}/users/${userId}/GetUserById`,
        method: 'GET',
        success: function (user) {
            let addressesHtml = user.addresses.map((address, index) => `
                          <div class="card mb-2" style="margin:10px">
                              <div class="card-body">
                                  <h6 class="card-title">
                                      Địa chỉ ${index + 1}
                                      ${address.isDefault ? '<span class="badge bg-primary">Mặc định</span>' : ''}
                                  </h6>
                                  <p class="card-text">
                                      ${address.fullAddress}, ${address.city}
                                  </p>
                                  <button type="button" class="btn btn-sm btn-warning btnEditAddress"
                                      data-id="${address.id}"
                                      data-street="${address.fullAddress.split(',')[0].trim()}"
                                      data-district="${address.fullAddress.split(',')[1].trim()}"
                                      data-city="${address.city}">
                                      Sửa
                                  </button>
                                  <button type="button" class="btn btn-sm btn-danger btnDeleteAddress"
                                      data-id="${address.id}">
                                      Xóa
                                  </button>
                              </div>
                          </div>
                      `).join('');
            $('#addressesContainer').html(addressesHtml);
        },
        error: function () {
            alert('Không thể tải địa chỉ người dùng.');
        }
    });
}

function resetAddressForm() {
    $('#addressId').val('');
    $('#addressStreet').val('');
    $('#addressDistrict').val('');
    $('#addressCity').val('');
    $('#addressPostalCode').val('');
    $('#addressIsDefault').prop('checked', false);
}


let currentUserId = null;
$('#btnAddAddress').click(function () {
    if (!currentUserId) {
        alert('Vui lòng lưu người dùng trước khi thêm địa chỉ');
        return;
    }
    resetAddressForm();
    $('#addressUserId').val(currentUserId);
    $('#addressModal').modal('show');
});

// Edit Address
$(document).on('click', '.btnEditAddress', function () {
    const addressId = $(this).data('id');
    $('#addressId').val(addressId);
    $('#addressStreet').val($(this).data('street'));
    $('#addressDistrict').val($(this).data('district'));
    $('#addressCity').val($(this).data('city'));
    $('#addressModal').modal('show');
});

// Save Address
$('#addressForm').submit(function (e) {
    e.preventDefault();
    const addressId = $('#addressId').val();
    const userId = $('#addressUserId').val();

    const addressData = {
        street: $('#addressStreet').val(),
        district: $('#addressDistrict').val(),
        city: $('#addressCity').val(),
        postalCode: "123",
        isDefault: $('#addressIsDefault').is(':checked'),
        IsActive: true
    };
    const url = addressId ?
        `${apiUrl}/Users/address/${addressId}` // Update
        :
        `${apiUrl}/users/${userId}/AddAddress`; // Add

    const method = addressId ? 'PUT' : 'POST';

    $.ajax({
        url: url,
        method: method,
        contentType: 'application/json',
        data: JSON.stringify(addressData),
        success: function () {
            $('#addressModal').modal('hide');
            loadUserAddresses(userId);
            alert('Thao tác thành công!')
        },
        error: function () {
            alert('Không thể lưu địa chỉ.');
        }
    });
});

// Delete Address
$(document).on('click', '.btnDeleteAddress', function () {
    const addressId = $(this).data('id');
    if (confirm('Bạn có chắc chắn muốn xóa địa chỉ này?')) {
        $.ajax({
            url: `${apiUrl}/Users/address/${addressId}/Deactivate`,
            method: 'PUT',
            success: function () {
                loadUserAddresses(currentUserId);
                alert('Xóa địa chỉ thành công!');
            },
            error: function () {
                alert('Không thể xóa địa chỉ.');
            }
        });
    }
});