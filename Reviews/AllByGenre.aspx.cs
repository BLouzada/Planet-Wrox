using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class  Reviews_AllByGenre : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
        {
            var AllGenres = from genre in myEntities.Genres.Include("Reviews")
                            orderby genre.Name
                            where (genre.Reviews.Count() > 0)

                            select new
                            {
                                genre.Name,
                                genre.Reviews
                            };

            
            
            
            {
               
                Repeater1.DataSource = AllGenres.ToList();
                Repeater1.DataBind();
            }
        }
    }
}