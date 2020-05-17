<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ATAG.VN</title>
</head>
<body>

<%--HEADER--%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="header-infor.jsp"></jsp:include>

<%--SLIDE BAR--%>
<jsp:include page="slide-bar.jsp"></jsp:include>

<%--BODY--%>
<div class="container">
    <div class="categoryName" style="margin-bottom: 20px">
        <h3>SEARCHING RESULT</h3>
    </div>
    <div>
        <h4>00 Sản phẩm</h4>
    </div>
    <div class="productListShow" style="margin: 30px">

        <%--        Vòng lặp ở đây để show lần lượt tất cả sản phẩm sau SEARCH--%>

        <div style="padding-top: 40px; padding-bottom: 60px">
            <table style="margin-bottom: 60px">
                <tr>
                    <td rowspan="3"><img class="card-img-top" src="img/phone1.png" style="height: 100%;width: 100%">
                    </td>
                    <td><h4>OPPO RENO3 PRO</h4></td>
                </tr>
                <tr>
                    <td style="vertical-align: top; color: red">Giá bán : 12.990.000₫</td>
                </tr>
                <tr>
                    <td style="line-height:25px; vertical-align: top">MÀN HÌNH ĐỤC LỖ KÉP ĐỘC ĐÁO : Sáng tạo và khác
                        biệt <br>
                        CAMERA SELFIE KÉP ĐÊM 44MP + 2MP : Xuất hiện đầu tiên trên thế giới <br>
                        4 CAMERA 64MP ẢNH SIÊU NÉT 108MP <br>
                        SẠC NHANH <br>
                        HIỆU NĂNG CẢI TIẾN MẠNH MẼ <br>
                    </td>
                </tr>
            </table>
            <br>
            <hr style="width: 800px">
        </div>
    </div>
</div>
<%--FOOTER--%>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
