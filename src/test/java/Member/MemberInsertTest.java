package Member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;

import me.hyun.AppTest;


public class MemberInsertTest extends AppTest{

   @Autowired
   DataSource dataSource;
   
   @Autowired
   PasswordEncoder passwordEncoder;
   
   @Test
   public void memberInsertTest() {
      
      String sql = "insert into member_tbl(userId,password,userName, email, phoneNumber) values(?,?,?,?,?)";
      Connection conn = null;
      PreparedStatement pstmt = null;
      
      try {
         conn = dataSource.getConnection();
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, "admin"); //id
         pstmt.setString(2, passwordEncoder.encode("1234")); //pw
         pstmt.setString(3, "박현정"); //name,
         pstmt.setString(4, "jua06067@naver.com"); //email
         pstmt.setString(5, "010-5118-7511"); //phonenumber
         pstmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
   }
}