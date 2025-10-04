### 1.3 Sequence UML  

**a) Luồng Thêm nội dung (Add Content)**  
![Sequence Add Content](seqadd.png)

**b) Luồng Xem danh sách nội dung (View Content)**  
![Sequence View Content](seqview.png)  

---

### 1.4 Thiết kế cơ sở dữ liệu (ERD)  

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
