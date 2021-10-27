using System.Data.Entity;

namespace Rhy3Studio.Models
{
    public class ProductContext : DbContext
    {
        public ProductContext()
          : base("Rhy3Studio")
        {
        }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<CartItem> ShoppingCartItems { get; set; }
    }
}