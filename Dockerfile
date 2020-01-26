# Get base SDK image
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /src

# Copy csproj to restore
COPY ProfileApp.Web/*.csproj ./
RUN dotnet restore

# Copy files and build
COPY ProfileApp.Web ./
FROM build AS publish
RUN dotnet publish -c Release -o /app/publish --no-restore

FROM nginx:alpine AS final
WORKDIR /usr/share/nginx/html
COPY --from=publish /app/publish/ProfileApp.Web/dist .
COPY nginx.conf /etc/nginx/nginx.conf