dotnet publish  -c Release
cp -r src/DotnetSpider.Spiders/bin/Release/netcoreapp3.1/publish/ dockerfile/spiders/out
cd dockerfile/spiders
docker build -t dotnetspider/spiders:latest .