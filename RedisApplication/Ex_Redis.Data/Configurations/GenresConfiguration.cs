using Ex_Redis.Data.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System.Reflection.Emit;

namespace Ex_Redis.Data.Configurations
{
    public class GenresConfiguration : IEntityTypeConfiguration<Genre>
    {
        public void Configure(EntityTypeBuilder<Genre> builder)
        {
            builder.ToTable("Genres");
            builder.HasKey(x => x.Id);
              
            builder.HasMany(x => x.Books)
                .WithOne(b => b.Genre)
                .HasForeignKey(b => b.GenreId);
        }
    }
}