<?php
//include auth.php file on all secure pages
include "auth.php";
$loginuser = $_SESSION['cuser']['UserID'];
?>
<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <title>Welcome Home</title>
   <link rel="stylesheet" type="text/css" href="css/style.css">
   <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins|Audiowide">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="alternate" href="https://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" type="application/atom+xml" title="Atom">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
   <script src="script.js"></script>
   <style>
      p{
         color: white;
      }
   </style>
   <script type="text/javascript">
      function deleteAccount(id){
        if(confirm("Are you sure you want to delete?")){
          window.location = 'delete.php?id=' + id;
        }
      }
    </script>
</head>
<body>
   <nav>
      <div class="navbar">
         <a href="dashboard.php" class="" ><i class="fa fa-fw fa-home"></i> Home</a> 
         <a href="archive.php" class="active"><i class="fas fa-archive"></i> Archive</a> 
         <?php
            if ($_SESSION['cuser']['UserType'] == 'admin' || $_SESSION['cuser']['UserType'] == 'superadmin' ) {
                ?>
                <a href="createarchive.php" class=""><i class="fas fa-folder-plus"></i> Create Archive</a> 
                <?php
            }
            if ($_SESSION['cuser']['UserType'] == 'superadmin' ) {
                ?>
                <a href="registration.php" class=""><i class="fas fa-user-plus"></i> Create Account</a>
                <a href="view.php"><i class="fas fa-users"></i> View Accounts</a>
                <a href="notification.php" class="" ><i class="fas fa-bell"></i></a>
                <?php
            }
         ?>
         <a href="logout.php" style="float: right;"><i class="fas fa-sign-out-alt"></i></a>
         <a href="#" style="float: right;"><i class="fas fa-id-card"></i> <?php echo $_SESSION['cuser']['Username']; ?><span  style="color: #888; font-size: 10px;"> (<?php echo ucfirst($_SESSION['cuser']['UserType']); ?>)</span></a>
      </div>
   </nav>
   <section>
        <form action="" method="GET" class="searchform" style="max-width:85%">
            <input id="Gosearch" type="text" placeholder="Search.." name="search">
            <select name="taskOption" id="entityID">
                <option value="id">by -&nbsp;Title</option>
                <option value="author">by -&nbsp;Author</option>
                <option value="date">by -&nbsp;Upload Date</option>
                <option value="lastname">by -&nbsp;Tags</option>
            </select>
            <button class="searchbtn" type="submit" name="searchAccount"><i class="fa fa-search"></i></button>
            <div class="college-box col-12">
                <div class="col-1-2 CECS">
                    <input type="checkbox" class="college-chkbx " id="CECS" name="CECS" value="CECS"><label for="CECS">CECS</label>
                </div>
                <div class="col-1-2 CHRM">
                    <input type="checkbox" class="college-chkbx " id="CHRM" name="CHRM" value="CHRM"><label for="CHRM">CHRM</label>
                </div class="col-2">
                <div class="col-1-2 COC">
                    <input type="checkbox" class="college-chkbx " id="COC" name="COC" value="COC"><label for="COC">COC</label>
                </div>
                <div class="col-1-2 CBAA">
                    <input type="checkbox" class="college-chkbx " id="CBAA" name="CBAA" value="CBAA"><label for="CBAA">CBAA</label>
                </div>
                <div class="col-1-2 CAS">
                    <input type="checkbox" class="college-chkbx " id="CAS" name="CAS" value="CAS"><label for="CAS">CAS</label>
                </div>
                <div class="col-1-2 CON">
                    <input type="checkbox" class="college-chkbx " id="CON" name="CON" value="CON"><label for="CON">CON</label>
                </div>
                <div class="col-1-2 CED">
                    <input type="checkbox" class="college-chkbx " id="CED" name="CED" value="CED"><label for="CED">CED</label>
                </div>
            </div>
        </form>
   </sec>
   <section class="table-container">
        <table id="customers">
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Authors</th>
                    <th>College</th>
                    <th>Discussion</th>
                    <th>Tags</th>
                    <th>UploadBy</th>
                    <th>Upload Date</th>
                    <th>File Name</th>
                    <th>File Path</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    if (isset($_GET['search']) && !$_GET['search']){
                        $sql = "SELECT * FROM thesisarchivebook";
                        $query = mysqli_query($connect, $sql);
                        while($row = mysqli_fetch_array($query)){ ?>
                        <tr>
                            <td><?php echo $row['thesis_title']; ?></td>
                            <td><?php echo $row['authors']; ?></td>
                            <td><?php echo $row['college']; ?></td>
                            <td><?php echo $row['thesis_desc']; ?></td>
                            <td><?php echo $row['tags']; ?></td>
                            <td><?php echo $row['uploaded_by']; ?></td>
                            <td><?php echo $row['upload_date']; ?></td>
                            <td><?php echo $row['filename']; ?></td>
                            <td><div><a target="_blank" href="<?php echo $row['filename']; getlog($row['book_id'],$loginuser);?>"></a></div></td>
                        </tr>
                <?php }} else {
                    while($row = mysqli_fetch_array($result)){ ?>
                        <tr>
                            <td><?php echo $row['thesis_title']; ?></td>
                            <td><?php echo $row['authors']; ?></td>
                            <td><?php echo $row['college']; ?></td>
                            <td><?php echo $row['thesis_desc']; ?></td>
                            <td><?php echo $row['tags']; ?></td>
                            <td><?php echo $row['uploaded_by']; ?></td>
                            <td><?php echo $row['upload_date']; ?></td>
                            <td><?php echo $row['filename']; ?></td>
                            <td><div><a target="_blank" href="<?php echo $row['filename']; getlog($row['book_id'],$loginuser);?>">View File</a></div></td>
                        </tr>
                <?php }}?>
            </tbody>
        </table>
    </section>
</body>
</html>