## dotnet Core to Heroku

#### Requeriments
- Heroku Account
- Heroku CLI
- DotnetCore 3.x


#### Step 1 - Login to heroku

```
heroku container:login
```

#### Step 2 - Build the image (see Dockerfile) 
```
docker build -t YourAppName .
```

#### Step 3 - Push container
```
# 'YourAppName' should be the name of the app you 
# configured in Heroku in step 4.
heroku container:push -a YourAppName web
```

#### Step 4 - Deploy

```
heroku container:release -a YourAppName web
```

#### Step 5 - Take a look
Navigate to https://your-app-name.herokuapp.com


#### Step 6 - Problem
For problems on heroku, replace the last line for the `Dockerfile`

`CMD ASPNETCORE_URLS=http://*:$PORT dotnet HerokuApp.dll`

#### Source/Credits

[dev.to/net-core-to-heroku](https://dev.to/alrobilliard/deploying-net-core-to-heroku-1lfe)
