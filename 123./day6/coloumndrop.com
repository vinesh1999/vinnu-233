<!DOCTYPE html>
<html>
<head>
	<title>coulmn drop</title>
	<style>
	.container
	      {
			display: flex;
			flex-wrap: wrap;
		  }
		.img1
		{
			background-image: url(./bus.jpg);
			background-repeat: no-repeat;
		}
        .img2
         {
			background-image: url(./nature.jpg);
			background-repeat: no-repeat;
		 }
		.img3
		{
			background-image: url(./beach.jpg);
			background-repeat: no-repeat;
		}
		
		img{
			width: 100%;
			height: 150px;
		}
		.box{
			width: 100%;
			height: 150px;
		}
		 @media screen and (min-width: 0px) and (max-width: 450px){
				.img1
				{
				 width: 100%;
                 }
                 .img2
                 {
                 	width: 100%;
                 }
                 .img{
                 	width: 100%;
                 }
             }
              @media screen and (min-width: 451px) and (max-width: 550px){
				.img1{
					width: 25%
				}

					.img2{
				 width: 75%;
                 }
                 .img3{
                 	width: 100%;
                 }
             
             }
               @media screen and (min-width: 551px) and (max-width: 800px){
				.img1{
				 width: 25%;
                 }
                 .img2
                 {
                 	width: 50%;
                 }

                 	.img3{
                 	width: 25%;
                 }
           
                }
	</style>
</head>
<body>
<div class="container">
		<div class="box img1"><img src="./bus.jpg"></div>
		<div class="box img2"><img src="./nature.jpg"></div>
		<div class="box img3 "><img src="./beach.jpg"></div>
		
</div>
</body>
</html>