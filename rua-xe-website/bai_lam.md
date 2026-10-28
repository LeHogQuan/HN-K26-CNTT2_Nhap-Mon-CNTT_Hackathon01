# BÀI LÀM – HACKATHON 01

- **Mã đề:** 22
- **Họ tên:** Lê Hồng Quân
- **Lớp:** CNTT2
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):** Windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
get-childitem -recurse -force
mv .\bang_quy_trinh.txt docs
mv .\logo_rua_xe.png .\media\
cp .\media\logo_rua_xe.png .\backup\
rm .\temp_305.tmp -recurse -force
cd .\logs\
dir
cd ..
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
    Directory: C:\Users\Admin\Downloads\starter-kit
    (1)\starter-kit\rua-xe-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/28/2026   1:48 PM                backup
d-----        10/28/2026   1:39 PM                data
d-----        10/28/2026   1:42 PM                docs
d-----        10/28/2026   1:39 PM                logs
d-----        10/28/2026   1:42 PM                media
------        10/27/2026   1:32 AM             64 .env
-a----        10/28/2026   1:47 PM           4023 bai_lam.md


    Directory: C:\Users\Admin\Downloads\starter-kit
    (1)\starter-kit\rua-xe-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6191 logo_rua_xe.png


    Directory: C:\Users\Admin\Downloads\starter-kit
    (1)\starter-kit\rua-xe-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6114 luot_rua_xe_thang_
                                                  2.xlsx


    Directory: C:\Users\Admin\Downloads\starter-kit
    (1)\starter-kit\rua-xe-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM             53 bang_quy_trinh.txt


    Directory: C:\Users\Admin\Downloads\starter-kit
    (1)\starter-kit\rua-xe-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           1029 carwash.log


    Directory: C:\Users\Admin\Downloads\starter-kit
    (1)\starter-kit\rua-xe-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6191 logo_rua_xe.png

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
gc .\logs\carwash.log | select-string "ERROR"
gc .\logs\carwash.log | select-string "ERROR">>.\logs\daily_report.txt


```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2026-02-28 08:39:37 [ERROR] Het thoi gian cho (timeout)
2026-02-28 09:03:37 [ERROR] Dat lich that bai

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
.\auto_report.ps1

```

### Kết quả hiển thị

```text
Dang loc log...
Hoan thanh!

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
(gc .\logs\carwash.log | select-string "ERROR").count

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
6

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
set-content .\logs\tong_hop.txt -value "===TONG HOP LOG==="
get-content .\logs\carwash.log | select-string "WARNING" >> .\logs\tong_hop.txt
(gc .\logs\carwash.log | select-string "ERROR").count | out-file .\logs\tong_hop.txt -append

```

### Nội dung file logs/tong_hop.txt

```text
===TONG HOP LOG===


2026-02-28 08:35:37 [WARNING] Anh truoc sau dung luong lon

2026-02-28 08:47:37 [WARNING] Anh truoc sau dung luong lon

2026-02-28 09:23:37 [WARNING] Khoang rua so 2 dong khach

2026-02-28 09:27:37 [WARNING] Thoi gian phan hoi cham





6

```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/luot_rua_xe_thang_2.xlsx`, không cần ghi vào đây.
