/**
 * 
 */
package com.codeBind.Safar.controller;



import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.codeBind.Safar.SafarException;
import com.codeBind.Safar.forms.DriverForm;
import com.codeBind.Safar.model.Vo.DriverVo;
import com.codeBind.Safar.services.DriverMstService;
import com.codeBind.Safar.services.LoginService;
import com.codeBind.Safar.util.Constants;

@RestController
public class DriverController extends SafarBaseController{
	
	private static final Logger logger = LogManager.getLogger(DriverController.class);

	private static final String ADD_NEW_DRIVER = "addNewdriver";
	private static final String SEARCH_DRIVER_DTLS = "searchDriverDtls"; 
	
	/*@Autowired
	private DriverMstService memberMstService;
	*/

	@Resource(name="driverMstService")
	private DriverMstService driverMstService;

	
	/**@Method use to load Driver Dtls
	 * @param form
	 * @param result
	 * @return
	 */
	@RequestMapping(value = "/loadAddDriver.do")
	public ModelAndView loadAddDriver(@ModelAttribute("driverForm") DriverForm form, BindingResult result) {
		logger.info("Entering loadAddDriver()...");
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		String msg = "We are on new Page";
		try {
			
			DriverVo driverVo = form.getDriverVo();
			
			System.out.println("loginId " +getUserSession().getLoginId());
			System.out.println("compCode " +getUserSession().getCompCode());
			System.out.println("Comp Nm " +getUserSession().getCompName());
			System.out.println("userNM " +getUserSession().getUserNM());
			System.out.println("userTP " +getUserSession().getUserTp());
			
			
			if (!validateUser(Constants.Modules.ADD_DRIVER, Constants.Actions.CREATE_ACTION)) {
				logger.info("Exiting loadEgmRequest in validator()....");
				return new ModelAndView(UNAUTHORIZED_VIEW);
			}
			
			driverMstService.getDriverAllDtls(driverVo);
		
			returnMap.put("msg", msg);
		} catch(SafarException s) {
			logger.info("An Exception occurred while loading Driver details",s);
			result.rejectValue(Constants.STRING_ERROR,"An error occured while processing your request. Please Contact Administrator","");
		} catch(Exception e) {
			logger.info("An Exception occurred while loading Driver details",e);
			result.rejectValue(Constants.STRING_ERROR,"An error occured while processing your request. Please Contact Administrator","");
		}
		
		logger.info("Exiting loadAddDriver()...");
		return new ModelAndView(SEARCH_DRIVER_DTLS, returnMap);
	} 
		
	/**@METHOD use to add New Driver 
	 * @param form
	 * @param result
	 * @return
	 */
	@RequestMapping(value = "/addNewDriver.do")
	public ModelAndView addNewDriver(@ModelAttribute("driverForm") DriverForm form, BindingResult result) {
		logger.info("Entering addNewDriver()...");
		
		Map<String, Object> returnMap = new HashMap<String, Object>();

		try {
			
			DriverVo driverVo = form.getDriverVo();
		
			if (!validateUser(Constants.Modules.ADD_DRIVER, Constants.Actions.CREATE_ACTION)) {
				logger.info("Exiting loadEgmRequest in validator()....");
				return new ModelAndView(UNAUTHORIZED_VIEW);
			}

		} catch(Exception e) {
			logger.info("An Exception occurred while loading Add Driver ",e);
			result.rejectValue(Constants.STRING_ERROR,"An error occured while processing your request. Please Contact Administrator","");
		}
		
		logger.info("Exiting addNewDriver()..");
		return new ModelAndView(ADD_NEW_DRIVER, returnMap);
	}
}
