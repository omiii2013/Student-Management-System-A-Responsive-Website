<link href="style.css" rel="stylesheet" type="text/css" />
 <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid" style="
        /* height: 82px; */
        margin: 0px;
        padding: 8px;
        background-color: rgb(230 145 83);
        /* background-image: linear-gradient(to bottom, rgb(234 64 166), rgb(234 64 166)); */
        background-repeat: repeat-x;
        border: 1px solid rgb(230 145 83);
">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          
          <a class="brand" href="#" style="
    color: black;
    font-family: monospace;
"><b>Student Record Management System </b></a>
          <div class="nav-collapse collapse">
            <ul class="nav pull-right">
              <li><a style="
              color: black;
              font-family: monospace;
              font-size: 21px;
    background-image: linear-gradient(to bottom, rgb(230 145 83),rgb(230 145 83));
"><i class="icon-user icon-large"></i> Welcome:<strong> <?php echo $_SESSION['SESS_FIRST_NAME'];?></strong></a></li>
			 <li><a  style="
       color: black;
       font-family: monospace;
    background-image: linear-gradient(to bottom, rgb(230 145 83), rgb(230 145 83));
"> <i class="icon-calendar icon-large"></i>
								<?php
								$Today = date('y:m:d',mktime(0,0,0));
								$new = date('l, F d, Y', strtotime($Today));
								echo $new;
								?>

				</a></li>
        <li>
<a href="../index.php" style="
              color: black;
    padding: 5px 0px 0px 0px;
    font-family: monospace;
    font-size: 16px;
    background-image: linear-gradient(to bottom, rgb(230 145 83),rgb(230 145 83));
"> <font color="black"><i class="icon-off icon-2x"></i></font><br></a>
</li>
              <!-- <li><a href="../index.php"><font color="red"><i class="icon-off icon-large"></i></font> Log Out</a></li> -->
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
	