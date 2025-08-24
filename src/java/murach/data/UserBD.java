package murach.data;

import murach.business.User;

public class UserBD {

    public static int insert(User user) {
        // Đây là một phương thức giả định.
        // Trong thực tế, mã này sẽ chèn một người dùng vào cơ sở dữ liệu.
        // Bạn có thể in ra console để kiểm tra.
        System.out.println("Inserting user into database:");
        System.out.println("Email: " + user.getEmail());
        System.out.println("First Name: " + user.getFirstName());
        System.out.println("Last Name: " + user.getLastName());
        
        // Trả về một giá trị để giả lập việc chèn thành công.
        return 1;
    }
}
