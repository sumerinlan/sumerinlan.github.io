---
# basic info
layout: post
title: Airbnb Internship
date: 2019-05-20 -0800
# page info
site: portfolio
type: Internship
# categories: [Web, Full-Stack]
tags: [Java, Thrift, React, TypeScript]
# project info
role: Software Engineer, Full-Stack
location: San Francisco, CA
# content info
excerpt: Internship @ Ops Tech, Airbnb Plus
---

I interned at Airbnb Plus as a full-stack engineer. I participated in the Service-Oriented Architecture (SOA) process, responsible for creating endpoints to get inspectors availabilities for inspections. I have two projects built into Plus.Tools, an internal website hosting operation tools.

-   [Projects Highlight](#ProjectsHighlight)
-   [Listing Widget](#ListingWidget)
-   [Appointments Scheduling Tool](#AppointmentsSchedulingTool)

<h1 id='ProjectsHighlight'>Projects Highlight</h1>

-   Built one frontend and one end-to-end project in Plus.Tools, an internal website hosting operation tools
-   Created endpoint used internally and externally
-   Took ownership from writing design docs, implementing backend endpoints and frontend features, testing and rolling out

## Technology Used

### Frontend:

-   React
-   TypeScript

### Backend:

-   Powergrid (internal Java library)
-   Java
-   Thrift (IDL)

## Collaboration

-   Full-stack engineers
-   Designer

<h1 id='ListingWidget'>Listing Widget</h1>

**_a widget displaying listing details_**

"Listing Widget" was built to provide an at-a-glance view of _Listing Hub_, a central place aggregating listing information in the plus funnel so that users can get all the context on a listing that they need while making evaluation decisions.

## Background

When users are using evaluation tools for an application, they want to see information tied to the specific listing. Before this project, there was a “Listing Details” tab under some tools with key data for a listing and inspection. All of the information previously found in that tab can now be found in the Listing Widget

<!-- !["Listing Details" Tab](/assets/posts/2019-05-20-airbnb-internship/ListingWidget_Before.png) -->

## Goal

The goal of this project is to replace it with an overlay displaying information from _Listing Hub_. Users' workflow will not be interrupted when they want to see listing details from other pages.

## Delivery

### Frontend

This project is to add a listing widget to the top bar in pages, which shows and hides listing details by users’ toggling. When the widget is clicked, an overlay with listing and application information from _Listing Hub_ should be shown. When it is clicked again, the overlay will be hidden and current progress is kept.

<!-- Inactive state:

![Inactive](/assets/posts/2019-05-20-airbnb-internship/ListingWidget_0_Inactive_Cropped.png)

![Inactive](/assets/posts/2019-05-20-airbnb-internship/ListingWidget_0_Inactive.png)

Hovered state:

![Hovered](/assets/posts/2019-05-20-airbnb-internship/ListingWidget_1_Hovered_Cropped.png)

![Hovered](/assets/posts/2019-05-20-airbnb-internship/ListingWidget_1_Hovered.png)

Clicked state:

![Clicked](/assets/posts/2019-05-20-airbnb-internship/ListingWidget_2_Clicked_Cropped.png)

![Clicked](/assets/posts/2019-05-20-airbnb-internship/ListingWidget_2_Clicked.png)

The top bar component is designed to be reusable on every page in Plus.Tools, where engineers can specify items needed for each tool. -->

### Backend

Not all information in the "Listing Details" tab is captured in _Listing Hub_. I updated the endpoint of getting listing data to include the date and inspector information for the latest appointment.

<h1 id='AppointmentsSchedulingTool'>Appointments Scheduling Tool</h1>

**_a page supporting appointment scheduling, rescheduling, and canceling_**

Airbnb Plus is a higher tile of listings. In order to upgrade their houses to plus listings, hosts need to schedule appointments for amenities inspection/photo shooting, either doing by themselves or calling the operation team. Appointment Scheduling Tool is for the ops team to view and manage appointments.

This project is to build an “Appointments” tab within _Listing Hub_ in Plus.Tools to display the latest appointment information, and to support appointment scheduling, rescheduling, and canceling by Plus Operation team.

## Background

"HCO Applications Tool" is an old tool which has functionalities of scheduling, rescheduling and canceling.

<!-- ![HCO Applications](/assets/posts/2019-05-20-airbnb-internship/Appointments_Before.png) -->

For each application, there is a scheduling page displaying appointment details. The user can fill in the time, address, phone number, and select an inspector, and schedule or cancel an inspection. It displayed all inspectors within that region without querying their availabilities.

## Goal

The goal of this project is to extend _Listing Hub_ from a read-only dashboard to hosting multiple actionable tools. It will help Plus Operation team view, schedule, reschedule and cancel an appointment within _Listing Hub_.

"Appointments Scheduling Tool" is intended to replace the "HCO Applications Tool" in monorail and improve the workflow. It queries inspectors’ availabilities before displaying inspector options. All inspectors users see are available, and the users can specify an inspector when scheduling an appointment.

## Delivery

This project includes both creating and reusing existing endpoints to fetch and post data from _Listing Hub_. The project also includes creating the “Appointments” tab to display details of the latest appointment, and to support different functionalities based on the appointment status.

### Frontend

“Home Visit Information” card on the left is to display information about the listing and the latest appointment. “Schedule Home Visit” on the right is to schedule an appointment.

<!-- Wait Host To Schedule:

![Wait Host To Schedule](/assets/posts/2019-05-20-airbnb-internship/Appointments_0_WaitHostToSchedule.png)

Scheduled:

![Scheduled](/assets/posts/2019-05-20-airbnb-internship/Appointments_1_Scheduled.png)

Reschedule Modal:

![Reschedule](/assets/posts/2019-05-20-airbnb-internship/Appointments_1_Action_Reschedule.png)

Cancel Modal:

![Cancel](/assets/posts/2019-05-20-airbnb-internship/Appointments_1_Action_Cancel.png)

Canceled:

![Canceled](/assets/posts/2019-05-20-airbnb-internship/Appointments_2_Canceled.png)

Completed:

![Completed](/assets/posts/2019-05-20-airbnb-internship/Appointments_3_Completed.png) -->

### Backend

“Appointments” tab uses four endpoints (1) to view appointment information, (2) to fetch a list of inspectors available given the listing and time slot, (3) to schedule/reschedule an appointment, and (4) to cancel an existing appointment. While I could reuse the existing schedule and cancel endpoints, I was responsible for writing the other two endpoints.

I created an endpoint in an inspection-related service to query inspectors' availabilities. It will first fetch a list of inspectors given a city id or a market, filter out inspectors by distance, and return a list of time slots.

In a presentation service, I created an endpoint to use the endpoint above to query inspectors' availabilities and to filter the time slots through the host's calendar. We don't want to schedule a home visit when there is a reservation on that day. This endpoint can be used externally at www.airbnb.com.

I created another endpoint in another presentation service to get listing and appointment information required for displaying and for scheduling.
