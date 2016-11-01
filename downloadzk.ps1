Param(
  [string] $distro_name
)

if (!$distro_name){
    Write-Host "distro_name is empty"
    exit
}

$url = "http://www.apache.org/dist/zookeeper/$distro_name/$distro_name.tar.gz"

Invoke-WebRequest $url -OutFile .\$distro_name.tar.gz