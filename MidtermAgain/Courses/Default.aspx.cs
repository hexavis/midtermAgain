using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using MidtermAgain.Model;

namespace MidtermAgain.Courses
{
    public partial class Default : System.Web.UI.Page
    {
		protected MidtermAgain.Model.schoolEntities _db = new MidtermAgain.Model.schoolEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Cours entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<MidtermAgain.Model.Cours> GetData()
        {
            return _db.Courses;
        }
    }
}

