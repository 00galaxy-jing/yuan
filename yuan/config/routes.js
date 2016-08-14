/**
 * Route Mappings
 * (sails.config.routes)
 *
 * Your routes map URLs to views and controllers.
 *
 * If Sails receives a URL that doesn't match any of the routes below,
 * it will check for matching files (images, scripts, stylesheets, etc.)
 * in your assets directory.  e.g. `http://localhost:1337/images/foo.jpg`
 * might match an image file: `/assets/images/foo.jpg`
 *
 * Finally, if those don't match either, the default 404 handler is triggered.
 * See `api/responses/notFound.js` to adjust your app's 404 logic.
 *
 * Note: Sails doesn't ACTUALLY serve stuff from `assets`-- the default Gruntfile in Sails copies
 * flat files from `assets` to `.tmp/public`.  This allows you to do things like compile LESS or
 * CoffeeScript for the front-end.
 *
 * For more information on configuring custom routes, check out:
 * http://sailsjs.org/#!/documentation/concepts/Routes/RouteTargetSyntax.html
 */

module.exports.routes = {

  /***************************************************************************
  *                                                                          *
  * Make the view located at `views/homepage.ejs` (or `views/homepage.jade`, *
  * etc. depending on your default view engine) your home page.              *
  *                                                                          *
  * (Alternatively, remove this and add an `index.html` file in your         *
  * `assets` directory)                                                      *
  *                                                                          *
  ***************************************************************************/

  '/': {
    view: 'homepage'
  },

  /***************************************************************************
  *                                                                          *
  * Custom routes here...                                                    *
  *                                                                          *
  * If a request to a URL doesn't match any of the custom routes above, it   *
  * is matched against Sails route blueprints. See `config/blueprints.js`    *
  * for configuration options and examples.                                  *
  *                                                                          *
  ***************************************************************************/

  /*******联系我们********/
  '/contact':{view:'contact'},
  'post /addText': 'FeedbackController.addText',
  '/companyImg': 'CompanyprofilesController.view_companyImg',

  /*******联系方式********/
  '/contactInfo':'CompanyprofilesController.view_contactInformation',

  /*******诚聘英才********/
  '/recruit':'JobpostingsController.view_jobpostings',

  /*******公司团队********/
  '/team':{view:'team'},

  /*************错误处理***********/
  '/serverError':{view:'500'},
  '/notFind':{view:'404'},
  '/wecahtError':{view:'500'},

  /********公司简介********/
  '/profile':{view:'profile'},

  /********联系方式********/
  '/contactInfo':{view:'contactInfo'},

  /********代理记账********/
  '/bookkeeping':{view:'bookkeeping'},

  /********公司注册********/
  '/companyRegistration':{view:'companyRegistration'},

  /********注销变更********/
  '/changeOrCancellation':{view:'changeOrCancellation'},

  /********管理员*********/
  '/adminCompany':'CompanyprofilesController.view_admin_profile',//公司简介
  '/adminUserMessage':'FeedbackController.view_userMessage',
  'post /changeread': 'FeedbackController.changeRead',
  '/adminRecruit':'JobpostingsController.view_admin_recruit',
  'post /changejobdelete':'JobpostingsController.changeDelete',
  'post /addRecruit':'JobpostingsController.admin_addRecruit',
};