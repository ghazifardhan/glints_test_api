<?php

namespace App\Models;

use App\Transformers\BaseTransformer;
use Auth;

class TransactionController extends BaseModel
{
    public static function boot()
    {
       parent::boot();
       static::creating(function($model)
       {
           $user = Auth::user();
           $model->created_by = $user->user_id;
       });
   }

    /**
     * @var string UUID key of the resource
     */
    public $primaryKey = '_id';

    /**
     * @var null|array What relations should one model of this entity be returned with, from a relevant controller
     */
    public static $itemWith = [];

    /**
     * @var null|array What relations should a collection of models of this entity be returned with, from a relevant controller
     * If left null, then $itemWith will be used
     */
    public static $collectionWith = null;

    /**
     * @var null|BaseTransformer The transformer to use for this model, if overriding the default
     */
    public static $transformer = null;

    /**
     * @var array The attributes that are mass assignable.
     */
    protected $fillable = [
        'created_by',
        'book_title',
        'book_desc',
        'total_item',
        'supplier',
        'transaction_date'
    ];

    /**
     * @var array The attributes that should be hidden for arrays and API output
     */
    protected $hidden = [];

    /**
     * Return the validation rules for this model
     *
     * @return array Rules
     */
    public function getValidationRules()
    {
        return [
            'book_title' => 'required',
            'book_desc' => 'required',
            'total_item' => 'required|numeric',
            'supplier' => 'required',
            'transaction_date' => 'required|date'
        ];
    }

}
