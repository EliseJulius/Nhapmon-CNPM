# LAB02 – Phân tích yêu cầu & Thiết kế Use Case  
## Đề tài: F&B – Web App Truyền thông đa phương tiện  

---

## 🎯 Mục tiêu  
- Phát triển **Web App truyền thông đa phương tiện** cho doanh nghiệp F&B.  
- Quản trị **nội dung số & xuất bản đa kênh** (Web/Facebook/Zalo/TikTok/YouTube).  
- Hỗ trợ **livestream/clip ngắn, PWA offline, push notification**.  
- Tích hợp **SEO/Analytics**.  
- Áp dụng **SDLC (Waterfall/Agile-Scrum)**.  

---

## 1. Thiết kế Mini Project: Hệ thống quản lý & xuất bản nội dung F&B  

### 1.1 Entity (6 bảng dữ liệu chính)  
- **User** (Người dùng/Quản trị viên/Khách hàng)  
- **Content** (Bài viết/Video/Poster/Clip ngắn)  
- **Channel** (Kênh xuất bản: Web, FB, Zalo, TikTok, YouTube)  
- **Workflow** (Quy trình duyệt nội dung: Draft → Review → Approved → Published)  
- **Schedule** (Lịch xuất bản 90 ngày)  
- **Analytics** (Thống kê/SEO/Hiệu quả kênh)  

**Mối quan hệ:**  
- User 1–N Content (người tạo nội dung).  
- Content N–N Channel (xuất bản đa kênh).  
- Content 1–N Workflow (duyệt nhiều bước).  
- Schedule 1–N Content (kế hoạch nội dung).  
- Content 1–N Analytics (theo dõi dữ liệu).  

---

### 1.2 Use Case UML  

**Tác nhân chính:**  
- **Content Creator** (người tạo nội dung).  
- **Manager/Editor** (người duyệt, quản lý, xuất bản).  
- **Channel API** (FB API, TikTok API, YouTube API, v.v.).  
- **User/Customer** (người xem & tương tác).  

**Use Case chính:**  
- **Auth**: Đăng ký, Đăng nhập.  
- Soạn nội dung (text, poster, video, clip).  
- Lên lịch đăng nội dung (90 ngày).  
- Quản lý lịch nội dung.  
- Quản lý poster/thumbnail.  
- Quản lý kênh (Channel Management).  
- Workflow duyệt nội dung (Draft → Review → Approved → Published).  
- Xuất bản đa kênh (Web/FB/Zalo/TikTok/YouTube).  
- Livestream & Clip ngắn.  
- SEO & Analytics.  
- Push notification.  
- Xem nội dung, Like, Comment, Share (User/Customer).  

---

### 1.3 Sequence UML  

**a) Luồng Xuất bản đa kênh**  
1. Creator tạo nội dung → gửi duyệt.  
2. Editor review → phê duyệt.  
3. Hệ thống gọi API → đăng lên các kênh.  
4. Ghi log + Analytics → cập nhật dashboard.  

**b) Luồng Livestream/Clip ngắn**  
1. Creator tạo sự kiện livestream.  
2. Hệ thống kết nối API YouTube/TikTok.  
3. Livestream diễn ra → gửi push notification cho User.  
4. Sau khi kết thúc → clip ngắn được lưu & xuất bản lại.  

---

### 1.4 Thiết kế cơ sở dữ liệu (ERD)  

- **User(UserID, Name, Email, Role, PasswordHash)**  
- **Content(ContentID, Title, Body, MediaURL, Type, Status, CreatedBy, CreatedAt)**  
- **Channel(ChannelID, Name, Type, APIKey)**  
- **Workflow(WorkflowID, ContentID, Step, ApproverID, Status, Date)**  
- **Schedule(ScheduleID, ContentID, ChannelID, PublishDate, Status)**  
- **Analytics(AnalyticsID, ContentID, Views, Likes, Shares, SEOScore, Date)**  

---

## 2. Triển khai chi tiết trên Jira (Agile Scrum)  

### Product Backlog (ví dụ)  
- Auth (Đăng ký/Đăng nhập).  
- CRUD Content (bài viết, poster, video, clip).  
- Workflow duyệt nội dung.  
- Lập lịch 90 ngày.  
- Quản lý kênh (Channel Management).  
- Xuất bản đa kênh (FB API, TikTok API, Web).  
- Livestream & Clip ngắn.  
- SEO/Analytics Dashboard.  
- PWA offline + Push notification.  

### Sprint Plan (ví dụ)  
- **Sprint 1**: Auth, CRUD Content.  
- **Sprint 2**: Workflow + Schedule.  
- **Sprint 3**: Quản lý kênh + Xuất bản đa kênh.  
- **Sprint 4**: Livestream/Clip ngắn + SEO/Analytics + Release.  

### Board  
To Do → In Progress → Code Review → Testing → Done  

---

## 3. Đồng bộ GitHub  
- Repo riêng cho mỗi thành viên (public).  
- Upload artefact: Use Case Diagram, Sequence Diagram, ERD, README.md.  
- Jira ↔ GitHub (Smart Commit).  
- Ví dụ commit:  
