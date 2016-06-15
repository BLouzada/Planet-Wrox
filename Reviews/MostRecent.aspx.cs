using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class  Reviews_MostRecebt : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
        {
            var recent = (from myReview in myEntities.Reviews
                          orderby myReview.CreateDateTime descending
                          select new
                          {
                              myReview.Title,
                              myReview.Genre.Name
                              
                          }).Take(10);

                            
                            



        
            {
                Repeater1.DataSource = recent.ToList();
                Repeater1.DataBind();
            }
        }

    }
}