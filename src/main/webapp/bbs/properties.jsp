<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
//컨텍스트명 구하기 
String ctx = request.getContextPath();
%>
<style>
	.container_tmp{
		width:80%;
		/*border:1px solid red;*/
		margin:0 auto; /*중앙정렬*/
		padding-top:2em;
		text-align:center;
	}
    .product-table {
    	margin-top: 100px;
        width: 100%;
        table-layout: fixed;
        border-collapse: collapse;
    }
    .product-table td {
        padding: 10px;
        text-align: center;
    }
    .product-table img {
        width: 300px;
        height: 200px;
        display: block;
        margin: 0 auto;
    }
    .product-info {
        font-size: 18px;
        color: #333;
    }
    .custom-link {
    color: #FFFFFF; /* 원하는 색상 코드로 변경 */
    text-decoration: none; /* 선택적으로 밑줄 제거 */
	}

	.custom-link:hover {
	    color: #00FF00; /* 링크에 마우스를 올렸을 때 변경할 색상 */
	}
</style>
<jsp:include page="/inc/top.jsp" />
<div class="container_tmp">
	<table class="product-table">
	<!-- ------------------ -->
		<c:if test="${propertyAll==null || empty propertyAll }">
		<tr>
			<td colspan="3">
			<b>데이터가 없습니다</b>
			</td>
		</tr>
		</c:if>
		<c:if test="${propertyAll !=null && not empty propertyAll}">
		<%-- for(BoardVO board:boardAll){...}와 동일함 --%>
		<c:forEach var="prop" items="${propertyAll}" varStatus="status">
        	<c:if test="${status.index % 3 == 0}">
				<tr>
	                <td>
	                    <img src="<%=ctx %>/images/${prop.property_id}.jpg" alt="Product Image">
	                    <a class="custom_link" href="#">	                    
	                    ${prop.addr} ${prop.descript}<br>
	                    ${prop.total_size} ${prop.property_type} / 거래가 ${prop.price/100000000}억원
	                    <br><br><button>계약 하기</button>  <button>문의 하기</button>  <button>찜하기</button>
	                    <br><br><br><br>
	                    </a>
	                </td>
        	</c:if>
        	<c:if test="${status.index % 3 == 1}">
                <td>
                    <img src="<%=ctx %>/images/${prop.property_id}.jpg" alt="Product Image">
                    <a class="custom_link" href="#">	                    
	                    ${prop.addr} ${prop.descript}<br>
	                    ${prop.total_size} ${prop.property_type} / 거래가 ${prop.price/100000000}억원
	                    <br><br><button>계약 하기</button>  <button>문의 하기</button>  <button>찜하기</button>
	                    <br><br><br><br>
	                    </a>
                </td>
        	</c:if>
        	<c:if test="${status.index % 3 == 2}">
                <td>
                    <img src="<%=ctx %>/images/${prop.property_id}.jpg" alt="Product Image">
                    <a class="custom_link" href="#">	                    
	                    ${prop.addr} ${prop.descript}<br>
	                    ${prop.total_size} ${prop.property_type} / 거래가 ${prop.price/100000000}억원
	                    <br><br><button>계약 하기</button>  <button>문의 하기</button>  <button>찜하기</button>
	                    <br><br><br><br>
	                    </a>
                </td>
            </tr>
        	</c:if>
    </c:forEach>
	</c:if>
	</table>
	<table class="product-table">
		<td style="text-align:center">
			<!-- 페이지 네비게이션 -->
			
			<c:forEach var="i" begin="1" end="${pageCount }" step="1">
				[<a href="list.do?pageNum=${i}" <c:if test="${pageNum==i}">class='active'</c:if>> ${i} </a>]
			</c:forEach>
		</td>
	</table>
	<br><br>
	<hr><br><br>
	
</div>

<jsp:include page="/inc/foot.jsp" />