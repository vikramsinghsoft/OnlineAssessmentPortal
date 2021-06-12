using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineTestPortal.Models
{
    public class QuestionanswerVM
    {
        public Question Question { get; set; }
        public List<Answer> Answers { get; set; }
    }
}