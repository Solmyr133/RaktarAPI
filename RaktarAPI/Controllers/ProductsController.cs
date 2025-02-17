using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using RaktarAPI.Models;

namespace RaktarAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ProductsController : ControllerBase
    {
        private readonly RaktarContext _context;

        public ProductsController(RaktarContext context)
        {
            _context = context;
        }

        // GET /api/products?page=1&pageSize=10
        [HttpGet]
        public async Task<IActionResult> GetProducts([FromQuery] int page = 1, [FromQuery] int pageSize = 10)
        {
            if (page <= 0) page = 1;
            if (pageSize <= 0) pageSize = 10;

            var totalCount = await _context.Termekeks.CountAsync();

            var products = await _context.Termekeks
                .OrderBy(p => p.Name)
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .ToListAsync();

            return Ok(new
            {
                TotalCount = totalCount,
                Page = page,
                PageSize = pageSize,
                Data = products
            });
        }

        // GET /api/products/{id}
        [HttpGet("{id}")]
        public async Task<ActionResult<Termekek>> GetProductById(Guid id)
        {
            var product = await _context.Termekeks.FindAsync(id);

            if (product == null)
                return NotFound();

            return Ok(product);
        }

        // POST /api/products
        [HttpPost]
        public async Task<ActionResult<Termekek>> CreateProduct(Termekek product)
        {
            // If Id is not provided, you can generate a new one
            if (product.Id == Guid.Empty)
            {
                product.Id = Guid.NewGuid();
            }

            _context.Termekeks.Add(product);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetProductById), new { id = product.Id }, product);
        }

        // PUT /api/products/{id}
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateProduct(Guid id, Termekek updatedProduct)
        {
            if (id != updatedProduct.Id)
                return BadRequest("Product ID mismatch");

            var product = await _context.Termekeks.FindAsync(id);

            if (product == null)
                return NotFound();

            // Update the fields
            product.Name = updatedProduct.Name;

            _context.Entry(product).State = EntityState.Modified;
            await _context.SaveChangesAsync();

            return NoContent();
        }

        // DELETE /api/products/{id}
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteProduct(Guid id)
        {
            var product = await _context.Termekeks.FindAsync(id);
            if (product == null)
                return NotFound();

            _context.Termekeks.Remove(product);
            await _context.SaveChangesAsync();

            return NoContent();
        }
    }
}