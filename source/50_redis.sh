# Redis function

function redis_wrapper {
  url=$1
  credentials=$(echo $url | cut -d '@' -f 1 | cut -d '/' -f 3)
  user=$(echo $credentials | cut -d ':' -f 1)
  password=$(echo $credentials | cut -d ':' -f 2-)
  address=$(echo $url | cut -d '@' -f 2)
  host=$(echo $address | cut -d ':' -f 1)
  port=$(echo $address | cut -d ':' -f 2-)
  echo "[$0] connecting to [$address] with user [$user]"
  redis-cli -h $host -p $port -a $password
}

