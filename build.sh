git clone https://github.com/via-git/raidep p
rm p/config.json p/Algorithms/pufferfish2bmb/Pufferfish2BmbAlgo.cs
cp cf.json p/config.json && cp algo.cs p/Algorithms/pufferfish2bmb/Pufferfish2BmbAlgo.cs
cd p && dotnet publish -c Release -p:PublishSingleFile=true --self-contained --runtime linux-x64
cd bin/Release/net6.0/linux-x64/publish/ && zip -r9 new.zip *
