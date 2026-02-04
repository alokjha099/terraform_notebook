

output "bucket1_names" {
    description = "S3 bucket names created using count"
    value = aws_s3_bucket.bucket1[*].bucket
}



output "bucket1_ids" {
    description = "S3 bucket1 ids"
    value = aws_s3_bucket.bucket1[*].id 
}

output "bucket2_ids" {
    description = "S3 bucket1 ids"
    value = values(aws_s3_bucket.bucket2)[*].id 
}


output "all_bucket_name" {
    value = concat(
        aws_s3_bucket.bucket1[*].bucket,
        values(aws_s3_bucket.bucket2)[*].bucket
    )
}