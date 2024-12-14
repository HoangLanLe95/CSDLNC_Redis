using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);
// Thêm Razor Pages hoặc MVC
builder.Services.AddControllersWithViews();
builder.Services.AddRazorPages();


// Thêm services
builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

// Cấu hình SQL Server
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

// Cấu hình Redis
builder.Services.AddStackExchangeRedisCache(options =>
{
    options.Configuration = builder.Configuration.GetConnectionString("Redis");
    options.InstanceName = "SampleInstance_";
});
// CORS
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowLocalhost",
        policy => policy.WithOrigins("https://localhost:7260")  // frontend 
                        .AllowAnyMethod()
                        .AllowAnyHeader());
});
var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}
// Cấu hình middleware để hỗ trợ Razor Pages
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    app.UseHsts();
}
app.UseHttpsRedirection();
app.UseAuthorization();
app.MapControllers();
app.UseCors("AllowLocalhost");
// Định tuyến hỗ trợ Razor Pages
app.MapControllers();
app.MapRazorPages(); // Bổ sung dòng này nếu chưa có
app.MapDefaultControllerRoute(); // Tùy chọn nếu bạn muốn hỗ trợ Controller với View


app.Run();