package lan.dev;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "JSTLExampleServlet", urlPatterns = "/JSTLExampleServlet")
public class JSTLExampleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Ví dụ 1: Hiển thị thông điệp
        String message = "Chào mừng bạn đến với JSP và JSTL!";
        request.setAttribute("message", message);

        // Ví dụ 2: Vòng lặp với danh sách
        List<String> items = new ArrayList<>();
        items.add("Táo");
        items.add("Chuối");
        items.add("Nho");
        items.add("Dứa");
        request.setAttribute("items", items);

        // Ví dụ 3: Điều kiện với JSTL
        int age = 20;
        request.setAttribute("age", age);

        // Ví dụ 4: Lặp qua Map
        Map<String, Integer> studentMap = new HashMap<>();
        studentMap.put("John", 85);
        studentMap.put("Mary", 90);
        studentMap.put("Alex", 78);
        request.setAttribute("studentMap", studentMap);

        // Ví dụ 5: Hiển thị danh sách đối tượng
        List<Product> products = new ArrayList<>();
        products.add(new Product("Sản phẩm A", 100));
        products.add(new Product("Sản phẩm B", 200));
        request.setAttribute("products", products);

        // Chuyển tiếp đến trang JSP
        request.getRequestDispatcher("/demojstl.jsp").forward(request, response);
    }
}
