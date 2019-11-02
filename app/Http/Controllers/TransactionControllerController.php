<?php

namespace App\Http\Controllers;

use App\Models\TransactionController;
use Illuminate\Http\Request;

class TransactionControllerController extends Controller
{
    /**
     * @var BaseModel The primary model associated with this controller
     */
    public static $model = TransactionController::class;

    /**
     * @var BaseModel The parent model of the model, in the case of a child rest controller
     */
    public static $parentModel = null;

    /**
     * @var null|BaseTransformer The transformer this controller should use, if overriding the model & default
     */
    public static $transformer = null;

    public function post(Request $request) {
        $this->authorizeUserAction('create');

        $model = new static::$model;
        
        $input = $request->input();
        // $authUser = $this->auth->user()->getKey();
        // $input['created_by'] = $authUser;

        // return $input;
        $this->restfulService->validateResource($model, $input);

        $resource = $this->restfulService->persistResource(new $model($input));  

        // Retrieve full model
        $resource = $model::with($model::getCollectionWith())->where($model->getKeyName(), '=', $resource->getKey())->first(); 
        
        if ($this->shouldTransform()) {
            $response = $this->response->item($resource, $this->getTransformer())->setStatusCode(201);
        } else {
            $response = $resource;
        }

        return $response;
    }
}
