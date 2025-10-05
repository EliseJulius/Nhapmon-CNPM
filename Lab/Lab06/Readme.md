
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

🔵 Mối quan hệ chính
