using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineTestPortal.Models;

namespace OnlineTestPortal.Controllers
{
    public class QuestionController : Controller
    {
        // GET: Question
        public ActionResult Index()
        {
            MYDBEntities db = new MYDBEntities();
            var questions = db.Questions.Where(x=>x.IsAttempt==false);
            return View(questions);
        }

        [HttpPost]
        public ActionResult Save(FormCollection form)
        {
            foreach (string item in form)
            {
                var val = form[item];
                if (!string.IsNullOrEmpty(val))
                {
                    MYDBEntities db = new MYDBEntities();
                    var ans = db.Answers.Find(Convert.ToInt32(val));
                    ans.userAns = ans.Answer1;
                    db.SaveChanges();

                    var id = ans.QuestionId;
                    var question = db.Questions.Find(id);

                    question.IsAttempt = true;
                    db.SaveChanges();
                }
            }
            return View();
        }
    }
}