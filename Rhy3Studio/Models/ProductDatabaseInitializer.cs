using System.Collections.Generic;
using System.Data.Entity;

namespace Rhy3Studio.Models
{
    public class ProductDatabaseInitializer : DropCreateDatabaseAlways<ProductContext>
    {
        protected override void Seed(ProductContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetProducts().ForEach(p => context.Products.Add(p));
        }

        private static List<Category> GetCategories()
        {
            var categories = new List<Category> {
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "Purchase"

                },
                new Category
                {
                    CategoryID = 2,
                    CategoryName = "Service"

                },
            };

            return categories;
        }

        private static List<Product> GetProducts()
        {
            var products = new List<Product> {
                new Product
                {
                    ProductID = 1,
                    ProductName = "Honda Civic",
                    Description = "2020",
                    ImagePath = "Hondacivic.jpg",
                    UnitPrice = 5500000.00,
                    CategoryID = 1
                },

                new Product
                {
                    ProductID = 2,
                    ProductName = "MarkX",
                    Description = "2015",
                    ImagePath = "MarkX.jpg",
                    UnitPrice = 2300000.00,
                    CategoryID = 1
                },

                new Product
                {
                    ProductID = 3,
                    ProductName = "Audi S3",
                    Description = "2021",
                    ImagePath = "Audi.jpg",
                    UnitPrice = 8800000.00,
                    CategoryID = 1
                },

                new Product
                {
                    ProductID = 4,
                    ProductName = "BMW M4",
                    Description = "2020",
                    ImagePath = "M4.jpg",
                    UnitPrice = 7600000.00,
                    CategoryID = 1
                },

            /*    new Product
                {
                    ProductID = 5,
                    ProductName = "Nikon AF-S FX NIKKOR 16-35mm",
                    Description = "Best basic full-frame lens",
                    ImagePath = "nikkor-16-35mm-.jpg",
                    UnitPrice = 1500.00,
                    CategoryID = 2
                },

                new Product
                {
                    ProductID = 6,
                    ProductName = "Canon EF 100-400mm",
                    Description = "Best long-range zoom",
                    ImagePath = "canon-ef-100-400mm.jpg",
                    UnitPrice = 800.00,
                    CategoryID = 2
                },

                new Product
                {
                    ProductID = 7,
                    ProductName = "Canon EF-S 24mm",
                    Description = "Best pancake lens",
                    ImagePath = "canon-ef-s-24mm.jpg",
                    UnitPrice = 890.00,
                    CategoryID = 2
                },

                new Product
                {
                    ProductID = 8,
                    ProductName = "Rokinon 14mm",
                    Description = "Wide angle bargain",
                    ImagePath = "rokinon-14mm.jpg",
                    UnitPrice = 1900.00,
                    CategoryID = 2
                },*/
            };

            return products;
        }
    }
}