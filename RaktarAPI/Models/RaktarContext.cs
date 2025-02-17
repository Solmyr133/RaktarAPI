using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace RaktarAPI.Models;

public partial class RaktarContext : DbContext
{
    public RaktarContext()
    {
    }

    public RaktarContext(DbContextOptions<RaktarContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Beszallitok> Beszallitoks { get; set; }

    public virtual DbSet<Termekek> Termekeks { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Beszallitok>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PRIMARY");

            entity.ToTable("beszallitok");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Name)
                .HasMaxLength(255)
                .HasDefaultValueSql("'NULL'")
                .HasColumnName("name");
        });

        modelBuilder.Entity<Termekek>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PRIMARY");

            entity.ToTable("termekek");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Name)
                .HasMaxLength(255)
                .HasDefaultValueSql("'NULL'")
                .HasColumnName("name");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
