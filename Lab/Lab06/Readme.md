
# 🔶 Mô tả sơ đồ lớp - Class Diagram 

# 🔵 Mô tả chi tiết các lớp

*🔹 User*

* Thuộc tính:
  - userId: int 
  - name: String 
  - email: String 
  - role: String 
  - passwordHash: String 
* Phương thức:
  - + login(email, password): boolean 
  - + logout(): void 
  - + createContent(content): void 
  - + viewContentList(): xem danh sách nội dung
* Ý nghĩa:
 Người dùng có các thông tin riêng (thuộc tính private) và các hành động công khai như đăng nhập, đăng xuất, tạo nội dung.

*🔹 Content*

* Thuộc tính:
  - contentId : int 
  - title : String
  - body : String
  - mediaURL : String
  - type : String
  - status : String 
  - createdBy : int 
  - createdAt : DateTime
* Phương thức:
  - + validate() : boolean     
  - + submitForReview() : void
* Ý nghĩa:
  Là trung tâm của hệ thống — lưu trữ toàn bộ thông tin về bài đăng, bài viết, video, v.v.

*🔹 Channel*

* Thuộc tính:
  - channelId : int
  - name : String
  - type : String
  - apiKey : String       
* Phương thức:
  - + publishContent(content: Content): boolea
* Ý nghĩa:
  Đại diện cho các kênh xuất bản như Facebook, YouTube, Website,...

*🔹 Schedule*

* Thuộc tính:
   - scheduleId : int             
   - contentId : int              
   - channelId : int              
   - publishDate : DateTime       
   - status : String              
* Phương thức:
   - + schedulePublish() : void     
* Ý nghĩa:
  Quản lý lịch đăng bài của từng nội dung trên các kênh cụ thể.

*🔹 Analytics*

* Thuộc tính:
   - analyticsId : int            
   - contentId : int              
   - views : int                  
   - likes : int                  
   - shares : int                 
   - seoScore : float             
   - date : DateTime              
* Phương thức:
  - + calculateScore() : float     
* Ý nghĩa:
  Theo dõi hiệu suất của nội dung sau khi được đăng tải.

*🔹 Workflow*

* Thuộc tính:
   - workflowId : int             
   - contentId : int              
   - step : String                
   - approverId : int             
   - status : String              
   - date : DateTime              

* Phương thức:
   - + approve() : void             
   - + reject() : void              
* Ý nghĩa:
  Quản lý quy trình phê duyệt nội dung (review → approve → publish).

# 🔵 Mối quan hệ chính
  1. Kế thừa (Generalization):
    Hệ thống hiện chưa có kế thừa rõ ràng, tuy nhiên lớp User có thể mở rộng trong tương lai:
    User → ContentCreator, Reviewer, Admin.
  → Mỗi loại người dùng sẽ có quyền khác nhau: tạo nội dung, duyệt nội dung, hay quản lý toàn hệ thống.
  2. Kết hợp (Association / Composition):
    User ↔ Content (1 → 0..*):
    → Người dùng có thể tạo nhiều nội dung.
    Content ↔ Workflow (1 → 0..*):
    → Mỗi nội dung có thể trải qua nhiều bước duyệt, phê duyệt hoặc bị từ chối.
    Content ↔ Schedule (1 → 0..*):
    → Mỗi nội dung có thể được lên nhiều lịch đăng khác nhau trên các kênh.
    Schedule ↔ Channel (0..* → 1):
    Một kênh có thể chứa nhiều bài đăng đã được lên lịch.
    Content ↔ Analytics (1 → 0..*):
    → Mỗi nội dung có thể có nhiều bản ghi phân tích hiệu quả (lượt xem, chia sẻ, điểm SEO).
  3. Tương tác nghiệp vụ:
    Người dùng (User) tạo nội dung (Content) mới  →  Nội dung được kiểm tra hợp lệ (validate()) → gửi duyệt (submitForReview())  → Bộ phận duyệt (Workflow) nhận nội dung → phê duyệt (approve()) hoặc từ chối (reject()).
    Khi được duyệt, nội dung sẽ được lên lịch đăng (Schedule) trên các kênh (Channel)  → Sau khi đăng, hệ thống thu thập dữ liệu hiệu suất (Analytics) để đánh giá mức độ tương tác  →  Quản trị viên (Admin) có thể giám sát toàn bộ chu trình, chỉnh sửa hoặc gỡ nội dung khi cần.
  4. Chuỗi nghiệp vụ tổng quát:
    User → tạo Content → gửi Workflow duyệt → qua Schedule để đăng lên Channel → kết quả được lưu trong Analytics.
