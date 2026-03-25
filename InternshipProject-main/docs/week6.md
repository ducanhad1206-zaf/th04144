Tuần 6 – Validation & Exception

Thêm validate và chuẩn hóa xử lý lỗi.

1. Validate
   Task:
   title bắt buộc
   deadline phải là ngày tương lai
   Register:
   username, email, password hợp lệ
   Login:
   không được để trống
2. Xử lý lỗi
   CustomException: chứa HTTP status
   GlobalExceptionHandler:
   CustomException
   Validation error
   Exception chung
3. Response chung
   ApiResponse gồm:
   code
   message
   data