cd express
nohup node index.js > /dev/null 2>&1 &
echo "Reports for express.js"
sleep 1
wrk http://127.0.0.1:4563 -c 1000 -t12 -d 10
killall node

echo "======================================="

cd ../midori
nohup ruby route.rb >/dev/null 2>&1 &
echo "Reports for em-midori"
sleep 1
wrk http://127.0.0.1:4564 -c 1000 -t12 -d 10
killall ruby

echo "======================================="

cd ../rails/hello
nohup rails s -p 4565 >/dev/null 2>&1 &
echo "Reports for Rails"
sleep 3
wrk http://127.0.0.1:4565 -c 1000 -t12 -d 10
killall ruby

echo "======================================="

cd ../../rails-api/hello
nohup rails s -p 4566 >/dev/null 2>&1 &
echo "Reports for Rails API"
sleep 3
wrk http://127.0.0.1:4566 -c 1000 -t12 -d 10
killall ruby

echo "======================================="

cd ../../sinatra
nohup ruby route.rb >/dev/null 2>&1 &
echo "Reports for Sinatra"
sleep 1
wrk http://127.0.0.1:4567 -c 1000 -t12 -d 10
killall ruby