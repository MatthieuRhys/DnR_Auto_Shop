using System.Collections.Generic;
using System.Data.Entity;

namespace Rhy3Studio.Models
{
    public class ProductDatabaseInitializer : DropCreateDatabaseAlways <ProductContext>
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

                       


                new Product
                {
                    ProductID = 5,
                    ProductName = "Service ",
                    Description = "Oil and Coolant change",
                    ImagePath = "oil-change2.jpg ",
                    UnitPrice = 800.00,
                    CategoryID = 2
                },

                new Product
                {
                    ProductID = 6,
                    ProductName = " Control Arm Repair",
                    Description = " Best Control Arm Repair",
                    ImagePath = "ball-joint-bolted-large.jpg ",
                    UnitPrice = 890.00,
                    CategoryID = 2
                },

                new Product
                {
                    ProductID = 7,
                    ProductName = "Front-end Work",
                    Description = " Best Front-end Work",
                    ImagePath = "front-suspension-design-1024x683.jpg  ",
                    UnitPrice = 1900.00,
                    CategoryID = 2
                },

                

                 new Product
                {
                    ProductID = 8,
                    ProductName = " Tire Change",
                    Description = "Best Tire Change",
                    ImagePath = "01-change-tyre-barum-data.jpg ",
                    UnitPrice = 1900.00,
                    CategoryID = 2
                },


            };

            return products;
        }
    }
}