
# 🧾 Lab 05 – Tích hợp, Quản lý & Báo cáo

## 🎯 Mục tiêu
Hoàn thiện quy trình phát triển phần mềm từ giai đoạn phân tích, thiết kế đến lập trình và triển khai.  
Sinh viên thực hành tổng hợp các artifacts (Use Case, Sequence, Form Login, báo cáo) vào một project hoàn chỉnh, và quản lý phiên bản qua GitHub.

---

## 💡 Đề tài mini project
**Web App Truyền thông đa phương tiện cho quán cà phê** 
Hệ thống cho phép **người tạo nội dung (Content Creator)** và **người quản lý (Manager)** quản lý, duyệt và xuất bản nội dung truyền thông đa kênh (Web, Facebook, TikTok, YouTube…).

### 🎯 Mục tiêu demo
- Quản lý nội dung số (poster, clip ngắn, bài viết).  
- Hai chức năng hoạt động được:
  - 📝 **Thêm nội dung mới (Add Content)**
  - 👀 **Xem danh sách nội dung (View Content)**
- Có form đăng nhập đơn giản (`login.html`).

---

## 🧩 Tổng hợp các artifact (Lab 01–04)

| **Lab** | **Nội dung** | **Kết quả / File** |
|----------|---------------|--------------------|
| **Lab 01** | Thiết lập môi trường, GitHub Repo, README | Repository cá nhân + mô tả nhóm |
| **Lab 02** | Phân tích yêu cầu, Use Case Diagram | `usecase_fnb.puml` hoặc ảnh `.png` |
| **Lab 03** | Sequence Diagram cho 2 chức năng chính | `sequence_add_content.puml`, `sequence_view_content.puml` |
| **Lab 04** | Form đăng nhập (HTML/CSS/JS) | `login.html` |
| **Lab 05** | Báo cáo, gom artifacts, tạo version tag `v1.0` | `Lab05_Report.md` (file này) |

---

## 👥 Thành viên nhóm

| Họ và tên | MSSV | Vai trò |
|------------|------|----------|
| **Nguyễn Lê Vân Anh** | N23DCPT004 | Trưởng nhóm – Phân tích & Thiết kế Use Case, tổng hợp báo cáo |
| **Vũ Hoàng Bảo Châu** | N23DCPT008 | Lập trình & Kiểm thử giao diện (login, nội dung) |
| **Huỳnh Mai Ánh Dương** | N23DCPT014 | Thiết kế Sequence Diagram, hỗ trợ tài liệu & chỉnh sửa GitHub |

---


---

## 🔄 Quy trình phát triển (SDLC – Waterfall)

1. **Phân tích yêu cầu:** xác định 2 chức năng chính, tác nhân, luồng tương tác.  
2. **Thiết kế UML:** xây dựng Use Case Diagram và Sequence Diagram bằng PlantUML.  
3. **Lập trình:** tạo giao diện đăng nhập và mô phỏng thêm/xem nội dung (HTML).  
4. **Kiểm thử:** chạy file `login.html` kiểm tra thao tác đăng nhập và truy cập nội dung.  
5. **Tích hợp & báo cáo:** gom toàn bộ file, tạo `README.md`, đánh tag `v1.0`.

---

## 🧠 Mô tả các chức năng chính

### 1️⃣ Thêm nội dung mới (Add Content)
- **Actor:** Content Creator  
- **Mô tả:** Người tạo nội dung nhập tiêu đề, mô tả, tệp hình/clip; lưu bản nháp chờ duyệt.  
- **Kết quả:** Dữ liệu được thêm vào danh sách nội dung (ở chế độ “Draft”).

### 2️⃣ Xem danh sách nội dung (View Content)
- **Actor:** Content Creator, Manager, Customer  
- **Mô tả:** Người dùng xem danh sách nội dung có trên hệ thống.  
- **Kết quả:** Hiển thị nội dung theo quyền (Creator/Manager có thể xem toàn bộ, Customer chỉ xem được các nội dung “Published”).

---

## 🧰 Cách chạy demo

### Cách 1: Mở trực tiếp
1. Truy cập vào repo GitHub  
2. Mở file `src/login.html`  
3. Click **"View raw"** → Save → Mở trên trình duyệt (hoặc kéo thả vào Chrome/Edge).  

### Cách 2: Kích hoạt GitHub Pages
1. Vào **Settings → Pages**  
2. Chọn **Branch: main / folder: root** → **Save**  
3. Link demo sẽ có dạng:  (https://hmaianhduong-ctrl.github.io/App-quanly.github.io/)

---

## 📈 Kết quả & Đánh giá
- Đã mô phỏng được **2 chức năng chính chạy được**.  
- UML (Use Case, Sequence) được vẽ đúng quy trình.  
- Đã triển khai và quản lý phiên bản trên GitHub.  
- Đạt yêu cầu tích hợp đầy đủ các phần từ Lab 01–04.

---

## 🏁 Kết luận
Dự án mini giúp nhóm hiểu rõ quy trình phát triển phần mềm theo mô hình Waterfall, từ phân tích, thiết kế, đến lập trình và báo cáo.  
Nhóm đã thực hành teamwork, sử dụng GitHub hiệu quả, và triển khai được một bản demo chức năng cơ bản cho hệ thống quản lý nội dung F&B.

---

```bash
git add docs/Lab05_Report.md
git commit -m "Add Lab05 final report"
git push origin main



