#run tailwind command
alias starttailwind='npx tailwindcss -i ./wwwroot/css/app.css -o ./wwwroot/css/min.css --watch'

#c sharp add migration
efaddMigration() {
  dotnet ef migrations add $1 --project InfrastructureLayer/InfrastructureLayer.csproj --startup-project CodeConnect.WebAPI/CodeConnect.WebAPI.csproj --context InfrastructureLayer.ApplicationDbContext
}
#c sharp update database
efupdateDatabase() {
  dotnet ef database update --project InfrastructureLayer/InfrastructureLayer.csproj --startup-project CodeConnect.WebAPI/CodeConnect.WebAPI.csproj --context InfrastructureLayer.ApplicationDbContext
}
#dotnet test and code coverage
dotnettestcoverage(){

 dotnet test --collect:"XPlat Code Coverage"

 reportgenerator -reports:**/coverage.cobertura.xml -targetdir:coverage-report -reporttypes:Html

 xdg-open coverage-report/index.html >/dev/null 2>&1 &
}
