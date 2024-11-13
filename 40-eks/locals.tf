locals { 
    private_subnet_id = split(",", data.aws_ssm_parameter.private_subnet_ids.value) #converting stringlist to list 
    vpc_id = data.aws_ssm_parameter.vpc_id.value 
    eks_control_plane_sg_id = data.aws_ssm_parameter.eks_control_plane_sg_id.value 
    node_sg_id = data.aws_ssm_parameter.node_sg_id.value 
}

