<%@include file="navbar.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<form:form class="form-horizontal" action='registeruser' method="POST" modelAttribute="user">
  <fieldset>
    <div id="legend">
      <legend class="">Register</legend>
    </div>
    <div class="control-group">
      <!-- Username -->
      <label class="control-label"  for="username">Username</label>
      <div class="controls">
        <input type="text" id="username" name="username" placeholder="Username should not contain any numbers" class="input-xlarge">
        <p class="help-block"></p>
        <form:errors path="username"/>
      </div>
    </div>
 
    <div class="control-group">
      <!-- E-mail -->
      <label class="control-label" for="emailId">E-mail</label>
      <div class="controls">
        <input type="text"  id="emailId" name="emailId" placeholder="Please provide your E-mail" class="input-xlarge">
        <p class="help-block"></p>
        <form:errors path="emailId"/>
      </div>
    </div>
     <div class="control-group">
     
     <label class="control-label" for="customerName">Name</label>
      <div class="controls">
        <input type="text" id="customerName" name="customerName" placeholder="Please provide your Name" class="input-xlarge">
        <p class="help-block"></p>
      </div>
    </div>
 
 
    <div class="control-group">
      <!-- E-mail -->
      <label class="control-label" for="address">Address</label>
      <div class="controls">
        <input type="text" id="address" name="address" placeholder="Please provide your Address" class="input-xlarge">
        <p class="help-block"></p>
      </div>
    </div>
 
 
    <div class="control-group">
      <!-- Password-->
      <label class="control-label" for="password">Password</label>
      <div class="controls">
        <input type="password" id="password" name="password" placeholder="Password should atleast contain 3 characters" class="input-xlarge">
        <p class="help-block"></p>
        <form:errors path="password"/>
      </div>
    </div>
 
    <div class="control-group">
      <!-- Password -->
      <label class="control-label"  for="mobileNo">Mobile Number</label>
      <div class="controls">
        <input type="number" id="mobileNo" name="mobileNo" placeholder="Please provide your Mobile Number" class="input-xlarge">
        <p class="help-block">Please provide your Mobile Number</p>
        <form:errors path="mobileNo"/>
      </div>
    </div>
     <div class="control-group">
     
 <label class="control-label" for="role">ROLE</label>
      <div class="controls">
        <input type="text" id="role" name="role" placeholder="Please provide your Role in Capital Letters" class="input-xlarge">
        <p class="help-block"></p>
         <form:errors path="role"/>
      </div>
    </div>
 
 
    <div class="control-group">
 
      <!-- Button -->
      <div class="controls">
        <button class="btn btn-success">Register</button>
      </div>
    </div>
  </fieldset>
</form:form>
