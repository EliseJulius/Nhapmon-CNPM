# LAB02 – Phân tích yêu cầu & Thiết kế Use Case  
## Đề tài: F&B – Mini Project Quản lý Nội dung

---

## 🎯 Mục tiêu  
- Phát triển **Web App quản lý nội dung số** cho quán cafe: bài viết, poster, clip ngắn.  
- **Demo 2 chức năng chính**:  
  1. Thêm nội dung mới (Add Content)  
  2. Xem danh sách nội dung (View Content)  
- Có login form, cơ sở dữ liệu nhỏ, báo cáo GitHub, UML diagram, test cơ bản.  

---

## 1. Thiết kế Mini Project  

### 1.1 Entity (bảng dữ liệu chính)  
- **User** – Người dùng / Quản trị viên  
- **Content** – Bài viết / Poster / Clip  
- **Channel** – Kênh xuất bản (Web, FB, TikTok…)  
- **Workflow** – Quy trình duyệt nội dung (Draft → Review → Approved → Published)  
- **Schedule** – Lịch xuất bản nội dung  
- **Analytics** – Thống kê/Hiệu quả kênh  

**Mối quan hệ chính:**  
- User 1–N Content (người tạo nội dung)  
- Content N–N Channel (xuất bản đa kênh)  
- Content 1–N Workflow (nhiều bước duyệt)  
- Schedule 1–N Content (kế hoạch xuất bản)  
- Content 1–N Analytics (theo dõi hiệu quả)  

---

### 1.2 Use Case UML  

**Tác nhân chính:**  
- **Content Creator** – Người tạo nội dung  
- **Manager/Editor** – Người duyệt, quản lý nội dung  
- **Channel API** – API kênh xuất bản (FB/TikTok/Web)  
- **User/Customer** – Người xem và tương tác  

**Use Case chính (cho demo mini project):**  
- Thêm nội dung mới (Add Content)  
- Xem danh sách nội dung (View Content)  

---

#### Use Case Description  

**Use Case 1: Thêm nội dung mới (Add Content)**  
- **Use Case ID:** UC001  
- **Actor chính:** Content Creator  
- **Mục tiêu:** Cho phép Content Creator thêm bài viết, poster, clip vào hệ thống để quản lý và xuất bản.  

**Tiền điều kiện (Pre-condition):**  
- Content Creator đã đăng nhập thành công vào hệ thống.  
- Có quyền tạo nội dung mới.  

**Hậu điều kiện (Post-condition):**  
- Nội dung mới được lưu vào cơ sở dữ liệu.  
- Trạng thái ban đầu của nội dung: Draft.  
- Nếu bật workflow, nội dung được gửi tới Manager/Editor để review.  

**Luồng sự kiện chính (Main Flow):**  
1. Content Creator chọn “Thêm nội dung mới”.  
2. Hệ thống hiển thị form nhập dữ liệu (Title, Type, Body/MediaURL, Description).  
3. Content Creator điền thông tin và nhấn Submit.  
4. Hệ thống kiểm tra dữ liệu hợp lệ.  
5. Hệ thống lưu dữ liệu vào bảng Content với trạng thái Draft.  
6. Hệ thống hiển thị thông báo “Thêm nội dung thành công”.  

**Luồng thay thế (Alternate Flow):**  
- Nếu dữ liệu không hợp lệ → hệ thống hiển thị lỗi, yêu cầu sửa → quay lại bước 3.  

**Business Rules / Notes:**  
- Tiêu đề phải duy nhất trong hệ thống.  
- Media URL phải hợp lệ (nếu là clip/video).  

**Giải thích:**  
- Actor **Content Creator** tương tác với **Web App**.  
- **Content DB** lưu nội dung mới.  
- **Manager/Editor** được thông báo nếu workflow duyệt nội dung bật.  

---

**Use Case 2: Xem danh sách nội dung (View Content)**  
- **Use Case ID:** UC002  
- **Actor chính:** Content Creator / Manager / User  
- **Mục tiêu:** Cho phép các actor xem danh sách nội dung đã tạo hoặc đã xuất bản.  

**Tiền điều kiện (Pre-condition):**  
- Actor đã đăng nhập vào hệ thống.  
- Có quyền truy cập danh sách nội dung:  
  - Content Creator: nội dung của mình.  
  - Manager: tất cả nội dung.  
  - User: chỉ nội dung đã Published.  

**Hậu điều kiện (Post-condition):**  
- Danh sách nội dung được hiển thị đầy đủ, có thể click xem chi tiết.  

**Luồng sự kiện chính (Main Flow):**  
1. Actor chọn “Xem danh sách nội dung”.  
2. Hệ thống truy vấn cơ sở dữ liệu dựa trên quyền truy cập.  
3. Hệ thống hiển thị bảng danh sách nội dung (ID, Title, Type, Status, CreatedDate).  
4. Actor có thể click vào nội dung để xem chi tiết (không bắt buộc cho demo).  

**Luồng thay thế (Alternate Flow):**  
- Nếu không có dữ liệu → hiển thị thông báo “Chưa có nội dung nào”.  

**Business Rules / Notes:**  
- Content Creator chỉ xem được nội dung mình tạo.  
- Manager/Editor có thể xem tất cả nội dung.  
- User/Customer chỉ xem nội dung đã Published.  

**Giải thích:**  
- Actor có thể là **Content Creator**, **Manager/Editor** hoặc **User/Customer**.  
- **Web App** truy vấn **Content DB** dựa trên quyền.  
- Nếu không có dữ liệu, hệ thống hiển thị thông báo “Chưa có nội dung nào”.  

---

### 1.3 Thiết kế cơ sở dữ liệu (ERD)  

| Bảng      | Thuộc tính |
|-----------|------------|
| **User** | UserID, Name, Email, Role, PasswordHash |
| **Content** | ContentID, Title, Body, MediaURL, Type, Status, CreatedBy, CreatedAt |
| **Channel** | ChannelID, Name, Type, APIKey |
| **Workflow** | WorkflowID, ContentID, Step, ApproverID, Status, Date |
| **Schedule** | ScheduleID, ContentID, ChannelID, PublishDate, Status |
| **Analytics** | AnalyticsID, ContentID, Views, Likes, Shares, SEOScore, Date |

💡 *Mini Project chỉ cần dùng **User** và **Content** để demo 2 chức năng, các bảng còn lại là mở rộng.*  

---

## 2. Triển khai chi tiết trên Jira (Agile Scrum)  

### Product Backlog (rút gọn)  
- Auth (Đăng nhập/Logout)  
- CRUD Content (Add Content, View Content)  
- Workflow duyệt nội dung (mở rộng)  
- Quản lý kênh (mở rộng)  
- Xuất bản đa kênh (mở rộng)  

### Sprint Plan (rút gọn)  
- **Sprint 1**: Auth + Add Content + View Content → Demo chạy được  

### Board  
To Do → In Progress → Code Review → Testing → Done  
