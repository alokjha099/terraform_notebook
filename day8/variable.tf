    variable "tags" {
        type = map(string)
        default = {
            Enviroment = "dev"
            Name = "dev-Instance"
            created_by = "terraform"
        }
    }


    variable "bucket_name" {
        description =  "List of s3 bucket names to create"
        type = list(string)
        default = ["this-is-bucket-1","this-is-bucket-2"]
    }

    variable "bucket_name_set" {
        description =  "List of s3 bucket names to create"
        type = set(string)
        default = ["this-is-bucket-1","this-is-bucket-2"]
    }