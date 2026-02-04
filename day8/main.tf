


resource "aws_s3_bucket" "bucket1" {
    count = 2
   bucket= var.bucket_name[count.index]
    
   tags = var.tags
}


resource "aws_s3_bucket" "bucket2" {
    # for_each = length(var.bucket_name_set)  since no index are there length won't work it will run for_each
    # for every element of the set 
    for_each = var.bucket_name_set
   bucket= each.key
   # here we used set instead of list as here order of counting doesnt matter and we iterate through the 
   # length not index covering each element based in the length of the set. 

   tags = var.tags

   depends_on = [aws_s3_bucket.bucket1] 
}

