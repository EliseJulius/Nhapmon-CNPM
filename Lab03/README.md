# Selenium IDE - Login Form Test

## 👥 Thành viên nhóm
- Nguyễn Lê Vân Anh - N23DCPT004  
- Vũ Hoàng Bảo Châu - N23DCPT008  
- Huỳnh Mai Ánh Dương - N23DCPT014  

---

## 📌 Giới thiệu
Dự án này thực hiện **kiểm thử form đăng nhập (Login Form)** bằng **Selenium IDE Extension**.  
Mục tiêu là kiểm thử các chức năng cơ bản như nhập tài khoản, mật khẩu, nút đăng nhập, và xử lý thông báo thành công/thất bại.

---

## ⚙️ Yêu cầu
- Trình duyệt **Chrome** hoặc **Firefox**  
- Cài đặt **Selenium IDE Extension**  
  - Chrome: [Tải tại Chrome Web Store](https://chrome.google.com/webstore/detail/selenium-ide/mooikfkahbdckldjjndioackbalphokd)  
  - Firefox: [Tải tại Firefox Add-ons](https://addons.mozilla.org/en-US/firefox/addon/selenium-ide/)  

---

## 🚀 Hướng dẫn chạy test

### 1. Clone repository về máy
```bash
git clone https://github.com/<your-username>/<your-repo>.git
cd <your-repo>
```

### 2. Mở Selenium IDE
- Vào trình duyệt → Mở Selenium IDE extension.  
- Chọn **Open an existing project**.  

### 3. Import test case
- Chọn file `.side` trong thư mục dự án.  
- Selenium IDE sẽ load toàn bộ các test case.

### 4. Chạy test
- Nhấn nút **Run all tests** để chạy toàn bộ.  
- Hoặc chọn từng test case và nhấn **Run current test** để chạy riêng lẻ.

### 5. Kiểm tra kết quả
- Nếu test thành công → hiển thị màu xanh.  
- Nếu test thất bại → hiển thị màu đỏ kèm chi tiết lỗi.  

---

## ✅ Danh sách test case
1. Đăng nhập thành công với tài khoản đúng  
2. Đăng nhập thất bại với mật khẩu sai  
3. Đăng nhập thất bại với username sai  
4. Đăng nhập thất bại khi bỏ trống username  
5. Đăng nhập thất bại khi bỏ trống password  
6. Đăng nhập thất bại khi cả username và password trống  

---

## 📂 Cấu trúc thư mục
```
.
├── index.html        # File giao diện login form
├── style.css         # CSS cho giao diện
├── script.js         # Xử lý logic login
├── login-test.side   # File test Selenium IDE
└── README.md         # Hướng dẫn chạy test
```

---

## 💡 Ghi chú
- Mật khẩu/username đúng để test:  
  - Username: `admin`  
  - Password: `12345`  
- Sau khi chạy test, sẽ hiển thị thông báo **Success** hoặc **Alert** tùy trường hợp.  

---
