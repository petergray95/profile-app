# Get base SDK image
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
WORKDIR /app

# Copy csproj to restore
COPY ProfileApp.Web/*.csproj ./
RUN dotnet restore

# Copy files and build
COPY ProfileApp.Web ./
RUN dotnet publish -c Release -o out

# Generate runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
EXPOSE 80
COPY --from=build-env /app/out .
ENTRYPOINT [ "dotnet", "ProfileApp.Web.dll" ]