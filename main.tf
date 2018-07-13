resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
    tags {
        Name = "jeff-sandbox"
    }
}

resource "aws_subnet" "main" {
    cidr_block = "10.0.0.0/24"
    vpc_id = "${aws_vpc.main.id}"
    tags {
        Name = "jeff-sandbox-1"
    }

    map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "main" {
    vpc_id = "${aws_vpc.main.id}"

    tags {
        Name = "jeff-sandbox"
    }
}

resource "aws_route" "default" {
    route_table_id = "${aws_vpc.main.main_route_table_id}"

    destination_cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.main.id}"
}

