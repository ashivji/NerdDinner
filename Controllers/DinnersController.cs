﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NerdDinner.Models;

namespace NerdDinner.Controllers
{
    public class DinnersController : Controller
    {
        DinnerRepository dinnerRepository = new DinnerRepository();

        //
        // GET: /Dinners/

        public ActionResult Index()
        {

            var dinners = dinnerRepository.FindUpcomingDinners().ToList();

            return View("Index", dinners);
        }

        //
        // GET: /Dinners/Details/2

        public ActionResult Details(int id)
        {

            Dinner dinner = dinnerRepository.GetDinner(id);

            if (dinner == null)
                return View("NotFound");
            else
                return View("Details", dinner);
        }

        //
        // GET: /Dinners/Edit/2

        public ActionResult Edit(int id)
        {

            Dinner dinner = dinnerRepository.GetDinner(id);

            return View(dinner);
        }

        //
        // POST: /Dinners/Edit/2

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Edit(int id, FormCollection formValues) 
        {

 
            Dinner dinner = dinnerRepository.GetDinner(id);
 
            UpdateModel(dinner);
 
            dinnerRepository.Save();
 
            return RedirectToAction("Details", new { id = dinner.DinnerID });

        }

        //
        // GET: /Dinners/Create

        public ActionResult Create(int a =0)
        {

            Dinner dinner = new Dinner()
            {
                EventDate = DateTime.Now.AddDays(7)
            };

            return View(dinner);
        }


        //
        // POST: /Dinners/Create

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create()
        {

            Dinner dinner = new Dinner();


                UpdateModel(dinner);

                dinnerRepository.Add(dinner);
                dinnerRepository.Save();

                return RedirectToAction("Details", new { id = dinner.DinnerID });

        }

        //
        // HTTP GET: /Dinners/Delete/1

        public ActionResult Delete(int id)
        {

            Dinner dinner = dinnerRepository.GetDinner(id);

            if (dinner == null)
                return View("NotFound");
            else
                return View(dinner);
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Delete(int id, string confirmButton)
        {

            Dinner dinner = dinnerRepository.GetDinner(id);

            if (dinner == null)
                return View("NotFound");

            dinnerRepository.Delete(dinner);
            dinnerRepository.Save();
            var dinners = dinnerRepository.FindUpcomingDinners().ToList();

            return View("Index", dinners);
        }
 

    }
}
