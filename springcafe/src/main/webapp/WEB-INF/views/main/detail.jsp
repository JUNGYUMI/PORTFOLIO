<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<form> 
	<div class="form-group"> 
      <label>게시글 번호</label> 
      <input type="text" class="form-control"  name="num" value="${community.com_num}" readonly> 
    </div> 
 	<div class="form-group"> 
      <label>게시글 제목</label> 
      <input type="text" class="form-control"  name="title" value="${community.com_title}" readonly> 
    </div> 
    <div class="form-group"> 
      <label>작성자</label> 
      <input type="text" class="form-control"  name="writer" value="${community.com_writer}" readonly> 
    </div> 
    <div class="form-group"> 
      <label>작성일</label> 
      <input type="text" class="form-control"  name="registerDate" value="${community.com_registerDate}" readonly> 
    </div> 
    <div class="form-group"> 
      <label>조회수</label> 
      <input type="text" class="form-control"  name="views" value="${community.com_views}" readonly> 
    </div> 
    <div class="form-group"> 
      <label>내용</label> 
      <textarea class="form-control" rows="5" id="comment" name="content" readonly>${community.com_content}</textarea> 
    </div> 
</form> 
<c:if test="${member != null}"> 
	<a href="<%=request.getContextPath()%>/register"><button>글쓰기</button></a> 
</c:if> 
<c:if test="${member != null && member.mem_id == community.com_writer}"> 
	<a href="<%=request.getContextPath()%>/modify?num=${community.com_num}"><button>수정</button></a> 
</c:if> 
<c:if test="${member != null && member.mem_id == community.com_writer}"> 
	<a href="<%=request.getContextPath()%>/delete?num=${community.com_num}"><button>삭제</button></a> 
</c:if>