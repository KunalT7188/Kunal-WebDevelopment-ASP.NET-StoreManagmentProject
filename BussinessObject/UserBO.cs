using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinessObject
{
   public class UserBO
    {
        //--------------------Signup page-----------------//
        public string Name { get; set; }
        public string Mobile{ get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string ConfirmPassword { get; set; }
        public string ProfilePic { get; set; }
        //------------------View All Product-----------------------------------//
        public string Product_id { get; set; }

        public  string Product_name { get; set; }
        public string Product_rate { get; set; }
        public string Product_pic { get; set; }

     //----------------------Insert for Bill--------------------//

        public string P_ID { get; set; }
        public string P_NAME { get; set; }
        public string P_RATE { get; set; }
        public string P_QYT { get; set; }
        public string P_AMOUNT { get; set; }
        public string P_Email { get; set; }
        public string Subject { get; set; }
        public string MSG{ get; set; }


    }
}
