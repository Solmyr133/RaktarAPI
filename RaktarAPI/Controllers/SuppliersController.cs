using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using RaktarAPI.Models;

namespace RaktarAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class SuppliersController : ControllerBase
    {
        private readonly RaktarContext _context;

        public SuppliersController(RaktarContext context)
        {
            _context = context;
        }

        // GET /api/suppliers?page=1&pageSize=10
        [HttpGet]
        public async Task<IActionResult> GetSuppliers([FromQuery] int page = 1, [FromQuery] int pageSize = 10)
        {
            if (page <= 0) page = 1;
            if (pageSize <= 0) pageSize = 10;

            var totalCount = await _context.Beszallitoks.CountAsync();

            var suppliers = await _context.Beszallitoks
                .OrderBy(s => s.Name)
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .ToListAsync();

            return Ok(new
            {
                TotalCount = totalCount,
                Page = page,
                PageSize = pageSize,
                Data = suppliers
            });
        }

        // GET /api/suppliers/{id}
        [HttpGet("{id}")]
        public async Task<ActionResult<Beszallitok>> GetSupplierById(Guid id)
        {
            var supplier = await _context.Beszallitoks.FindAsync(id);

            if (supplier == null)
                return NotFound();

            return Ok(supplier);
        }

        // POST /api/suppliers
        [HttpPost]
        public async Task<ActionResult<Beszallitok>> CreateSupplier(Beszallitok supplier)
        {
            if (supplier.Id == Guid.Empty)
            {
                supplier.Id = Guid.NewGuid();
            }

            _context.Beszallitoks.Add(supplier);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetSupplierById), new { id = supplier.Id }, supplier);
        }

        // PUT /api/suppliers/{id}
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateSupplier(Guid id, Beszallitok updatedSupplier)
        {
            if (id != updatedSupplier.Id)
                return BadRequest("Supplier ID mismatch");

            var supplier = await _context.Beszallitoks.FindAsync(id);

            if (supplier == null)
                return NotFound();

            supplier.Name = updatedSupplier.Name;

            _context.Entry(supplier).State = EntityState.Modified;
            await _context.SaveChangesAsync();

            return NoContent();
        }

        // DELETE /api/suppliers/{id}
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteSupplier(Guid id)
        {
            var supplier = await _context.Beszallitoks.FindAsync(id);
            if (supplier == null)
                return NotFound();

            _context.Beszallitoks.Remove(supplier);
            await _context.SaveChangesAsync();

            return NoContent();
        }
    }
}
