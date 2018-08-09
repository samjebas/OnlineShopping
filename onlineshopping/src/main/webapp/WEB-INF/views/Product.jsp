<%@include file="navbar.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<title>Product Admin</title>
<body background="resources/images/admin.jpg">
<form:form class="form-horizontal" action='InsertProduct' method="POST" modelAttribute="product" enctype="multipart/form-data">
  <fieldset>
    <div id="legend">
      <legend class="">PRODUCT DETAILS</legend>
    </div>
    <div class="control-group">
      <!-- Username -->
      <label class="control-label"  for="productName">Product Name</label>
      <div class="controls">
      <form:input type="text" id="productName" name="productName" path="productName"  placeholder="Enter product Name" class="input-xlarge" />
     
        
      </div>
    </div>
     <div class="control-group">
      <!-- E-mail -->
      <label class="control-label" for="emailId">Category</label>
      <div class="controls">
      <form:select path="categoryId">
				<form:option value="0" label="--select--"/>
				<form:options items="${categoryList}"/>
			</form:select>
       
        <p class="help-block">Select Category</p>
      </div>
    </div>
    
     <div class="control-group">
     
     <label class="control-label" for="supplierId">Supplier ID</label>
      <div class="controls">
        <form:input type="text" path="supplierId" id="supplierId" name="supplierId" placeholder="Please provide your Name" class="input-xlarge"/>
       
      </div>
    </div>
    
    
    
    <div class="control-group">
     
     <label class="control-label" for="price">Price</label>
      <div class="controls">
        <form:input type="text" id="price" name="price" path="price" placeholder="Enter Price in Rupees" class="input-xlarge"/>
       
      </div>
    </div>
    
    
    
     <div class="control-group">
     
     <label class="control-label" for="stock">Stock</label>
      <div class="controls">
        <form:input type="text" id="stock" name="stock" path="stock" placeholder="Add no of products Quantity" class="input-xlarge"/>
       
      </div>
    </div>
    
    
      <div class="control-group">
      <!-- Product Description-->
      <label class="control-label"  for="prodDesc">Product Description</label>
      <div class="controls">
      <form:input type="text" id="prodDesc" name="prodDesc" path="prodDesc"  placeholder="Enter Product Description" class="input-xlarge" />
     
        
      </div>
    </div>
    
    
    
    <div class="control-group">
      <!-- Product Description-->
      <label class="control-label"  for="pimage">Product Image</label>
      <div class="controls">
      <form:input type="file" path="pimage"  />
     
        
      </div>
    </div>
    
    
    
    
       <!-- Button -->
      <div class="controls">
        <button class="btn btn-success">Register</button>
      </div>
    </div>
  </fieldset>
   </form:form>