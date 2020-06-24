aws_profile = "<Account number>/<role name>" #e.g. 123456789/bu-setup
aws_region  = "<region>" #e.g. us-east-1

aws_instance_gw = {
  "count"                       = <count in number> #e.g. 1
  "ami"                         = "<ami-id> "#e.g. "ami-0915e09cc7ceee3ab"
  "instance_type"               = "<instance-type>" #e.g. "t2.micro"
  "subnet_id"                   = "<subnet_id>" #e.g. "subnet-f219a0bf"
  "security_groups"             = "<security_groups seperated by comma>"  #e.g. ["sg-48575964","sg-48575964"]
  "key_name"                    = "<key_name>"  #e.g. "dc-lab-generic"
  "iam_instance_profile"        = "<iam_instance_profile>"  #e.g. "dc-ssm-session-manager-iam"
  "associate_public_ip_address" = "<true | false>" #e.g. true
  "watcher_mod"                 = "<gateway | x-gateway>" #e.g. "gateway"
  "watcher_gpt"                 = "<gateway port in double quotes preceeded by colon>"  #e.g. "\":17990\""
  "watcher_zon"                 = "<EC Subscription id>"  #e.g. "d985acd4-8dssf06a-4fff679-9441-cd22"
  "watcher_grp"                 = "<EC service group name>"  #e.g. "group-name"
  "watcher_sst"                 = "<EC Service URI>"  #e.g. "https://d985acd4-8dssf06a-4fff679-9441-cd22.run.aws-usw02-dev.ice.predix.io/v1beta"
  "watcher_dbg"                 = "<true | false>"  #e.g. "true"
  "watcher_tkn"                 = "<EC Service admin token>"  #e.g. "YWRtaW46S3hpbGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaatDZUpKRjc="
  "watcher_hst"                 = "<Gateway/Watcher URL>" #e.g. "wss://gateway-url/agent"
  "watcher_cps"                 = "<cps in number>" #e.g. "5"
  "watcher_env"                 = "LOCAL"
  "watcher_license"             = "SERVER_X5"
  "watcher_role"                = "DEVELOPER"
  "watcher_devId"               = "<Developer account id>"  #e.g. "160ssaaab-a717-44a4-8efb-cdddddd9"
  "watcher_scope"               = "app.auth"
  "watcher_certsDir"            = "\"/etc/ssl/certs\""
  "watcher_mode"                = "gateway" #cert. available option: gateway,server,client,gw:server,gw:client
  "watcher_os"                  = "<os details>" #e.g. "linux"
  "watcher_arch"                = "<os details>"  #e.g. "amd64"
  "watcher_instance"            = "<number of gateway instances>" #e.g. "3"
  "watcher_duration"            = "1"
  "watcher_cpuPeriod"           = "100000"
  "watcher_cpuQuota"            = "50000"
  "watcher_cpuShared"           = "128"
  "watcher_inMemory"            = "134217728"
  "watcher_swapMemory"          = "134217728"
  "watcher_oauth2"              = "<OAuth URL>" #e.g. "https://ec-oauth.herokuapp.com"
  "watcher_httpPort"            = "\":17990\""
  "watcher_tcpPort"             = "\":17991\""
  "watcher_customPort"          = "\":17992\""
  "watcher_contRev"             = "<agent version>" #e.g. "v1.1beta.fukuoka.2736"
  "watcher_contArtURL"          = "https://raw.githubusercontent.com/Enterprise-connect/sdk/{{contRev}}/dist/agent/agent_linux_sys.tar.gz"
  "watcher_passphrase"          = "<encrypted passphrase from client_secret>" #e.g. "9a8d72ac675fd1169b57922689f7d80d9d5b15be8f33b918a50c0b64fe07b069fee9090a2f3b50991a946c445f94bd6f614f13bcba745b8b091acce1eccbb69c"
  "watcher_lber_dnsname"        = "<DNS Name>"  #e.g. "corp-preprod-ecgw4.apps.ge.com"

  tags = {
    Name           = "<Name of the VM>" #e.g. "dc-ec-gateway"
    Env            = "<Environment name>" #e.g. "Lab"
    Engineer_Email = "<Developer email>"  #e.g. "Ramarao.Srikakulapu@ge.com"
    Engineer_SSO   = "<Developer SSO>"  #e.g. "212602085"
    Best_By        = "<Instance can be deleted after>"#e.g. "2020-05-30"
    UAI            = "<UAI>"  #e.g. "UAI1234567"
    Builder        = "<Builder name>" #e.g. "Terraform"
  }
}

aws_instance_lber = {
  "ami"                         = "<ami-id>"  #e.g. "ami-0915e09cc7ceee3ab"
  "instance_type"               = "<instance-type>" #e.g. "t2.micro"
  "subnet_id"                   = "<subnet_id>" #e.g. "subnet-f219a0bf"
  "security_groups"             = "<security_groups seperated by comma>"  #e.g. ["sg-48575964","sg-48575964"]
  "key_name"                    = "<key_name>"  #e.g. "dc-lab-generic"
  "iam_instance_profile"        = "<iam_instance_profile>"  #e.g. "dc-ssm-session-manager-iam"
  "associate_public_ip_address" = "<true | false>" #e.g. true

  tags = {
    Name           = "<Name of the VM>" #e.g. "dc-ec-lber"
    Env            = "<Environment name>" #e.g. "Lab"
    Engineer_Email = "<Developer email>"  #e.g. "Ramarao.Srikakulapu@ge.com"
    Engineer_SSO   = "<Developer SSO>"  #e.g. "212602085"
    Best_By        = "<Instance can be deleted after>"#e.g. "2020-05-30"
    UAI            = "<UAI>"  #e.g. "UAI1234567"
    Builder        = "<Builder name>" #e.g. "Terraform"
  }
}