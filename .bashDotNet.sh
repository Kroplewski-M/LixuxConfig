#run tailwind command
alias starttailwind='npx tailwindcss -i ./wwwroot/css/app.css -o ./wwwroot/css/min.css --watch'

#c sharp add migration
EfAddMigration() {
  dotnet ef migrations add $1 --project InfrastructureLayer/InfrastructureLayer.csproj --startup-project CodeConnect.WebAPI/CodeConnect.WebAPI.csproj --context InfrastructureLayer.ApplicationDbContext
}
#c sharp update database
EfUpdateDatabase() {
  dotnet ef database update --project InfrastructureLayer/InfrastructureLayer.csproj --startup-project CodeConnect.WebAPI/CodeConnect.WebAPI.csproj --context InfrastructureLayer.ApplicationDbContext
}
#dotnet test and code coverage
DotnetTestCoverage(){

 dotnet test --collect:"XPlat Code Coverage"

 reportgenerator -reports:**/coverage.cobertura.xml -targetdir:coverage-report -reporttypes:Html

 xdg-open coverage-report/index.html >/dev/null 2>&1 &
}
