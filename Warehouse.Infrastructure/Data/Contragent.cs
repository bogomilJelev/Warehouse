using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Warehouse.Infrastructure.Data
{
    public class Contragent
    {
        [Key]
        public Guid Id { get; set; } = new Guid();


        [Required]
        [StringLength(200)]
        public string Name { get; set; }


        [StringLength(20)]
        public string? Identifier { get; set; }


        [StringLength(100)]
        public string? Address { get; set; }


        [StringLength(20)]
        public string? LoyaltyCard { get; set; }

        public IList<Deal> Deals { get; set; } = new List<Deal>();
    }
}
