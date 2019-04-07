/**
 * 
 */
package com.codeBind.Safar.services;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.codeBind.Safar.SafarException;
import com.codeBind.Safar.model.Vo.DriverVo;

@Service
public interface DriverMstService {
	
/**@Method use get all Driver Dtls
 * @param driverVo
 */
public void getDriverAllDtls(DriverVo driverVo) throws SafarException;

/**@method use to save Driver Dtls
 * @param driverVo
 * @param returnMap 
 * @throws SafarException
 */
public void saveDriverDtls(DriverVo driverVo, Map<String, Object> returnMap) throws SafarException;

/**@method use to view driver dtls
 * @param driverVo
 * @throws SafarException
 */
public void viewDriverDtls(DriverVo driverVo)throws SafarException;

}
