// **********************************************************************
//
// Copyright (c) 2003-2013 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_LICENSE file included in this distribution.
//
// **********************************************************************
//
// Ice version 3.5.1
//
// <auto-generated>
//
// Generated from file `ImageRpc.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#include "ImageRpc.h"
#include <Ice/LocalException.h>
#include <Ice/ObjectFactory.h>
#include <Ice/BasicStream.h>
#include <Ice/Object.h>
#include <IceUtil/Iterator.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION / 100 != 305
#       error Ice version mismatch!
#   endif
#   if ICE_INT_VERSION % 100 > 50
#       error Beta header file detected
#   endif
#   if ICE_INT_VERSION % 100 < 1
#       error Ice patch level mismatch!
#   endif
#endif

namespace
{

const ::std::string __RPCImgRecong__ImgRetrieval__wordGetKnowledge_name = "wordGetKnowledge";

const ::std::string __RPCImgRecong__ImgRetrieval__wordSearch_name = "wordSearch";

const ::std::string __RPCImgRecong__ImgRetrieval__wordSearchImg_name = "wordSearchImg";

const ::std::string __RPCImgRecong__ImgRetrieval__imgSearch_name = "imgSearch";

}

namespace Ice
{
}
::IceProxy::Ice::Object* ::IceProxy::RPCImgRecong::upCast(::IceProxy::RPCImgRecong::ImgRetrieval* p) { return p; }

void
::IceProxy::RPCImgRecong::__read(::IceInternal::BasicStream* __is, ::IceInternal::ProxyHandle< ::IceProxy::RPCImgRecong::ImgRetrieval>& v)
{
    ::Ice::ObjectPrx proxy;
    __is->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new ::IceProxy::RPCImgRecong::ImgRetrieval;
        v->__copyFrom(proxy);
    }
}

::RPCImgRecong::WordWiki
IceProxy::RPCImgRecong::ImgRetrieval::wordGetKnowledge(const ::std::string& word, const ::Ice::Context* __ctx)
{
    ::IceInternal::InvocationObserver __observer(this, __RPCImgRecong__ImgRetrieval__wordGetKnowledge_name, __ctx);
    int __cnt = 0;
    while(true)
    {
        ::IceInternal::Handle< ::IceDelegate::Ice::Object> __delBase;
        try
        {
            __checkTwowayOnly(__RPCImgRecong__ImgRetrieval__wordGetKnowledge_name);
            __delBase = __getDelegate(false);
            ::IceDelegate::RPCImgRecong::ImgRetrieval* __del = dynamic_cast< ::IceDelegate::RPCImgRecong::ImgRetrieval*>(__delBase.get());
            return __del->wordGetKnowledge(word, __ctx, __observer);
        }
        catch(const ::IceInternal::LocalExceptionWrapper& __ex)
        {
            __handleExceptionWrapper(__delBase, __ex, __observer);
        }
        catch(const ::Ice::LocalException& __ex)
        {
            __handleException(__delBase, __ex, true, __cnt, __observer);
        }
    }
}

::Ice::AsyncResultPtr
IceProxy::RPCImgRecong::ImgRetrieval::begin_wordGetKnowledge(const ::std::string& word, const ::Ice::Context* __ctx, const ::IceInternal::CallbackBasePtr& __del, const ::Ice::LocalObjectPtr& __cookie)
{
    __checkAsyncTwowayOnly(__RPCImgRecong__ImgRetrieval__wordGetKnowledge_name);
    ::IceInternal::OutgoingAsyncPtr __result = new ::IceInternal::OutgoingAsync(this, __RPCImgRecong__ImgRetrieval__wordGetKnowledge_name, __del, __cookie);
    try
    {
        __result->__prepare(__RPCImgRecong__ImgRetrieval__wordGetKnowledge_name, ::Ice::Normal, __ctx);
        ::IceInternal::BasicStream* __os = __result->__startWriteParams(::Ice::DefaultFormat);
        __os->write(word);
        __result->__endWriteParams();
        __result->__send(true);
    }
    catch(const ::Ice::LocalException& __ex)
    {
        __result->__exceptionAsync(__ex);
    }
    return __result;
}

::RPCImgRecong::WordWiki
IceProxy::RPCImgRecong::ImgRetrieval::end_wordGetKnowledge(const ::Ice::AsyncResultPtr& __result)
{
    ::Ice::AsyncResult::__check(__result, this, __RPCImgRecong__ImgRetrieval__wordGetKnowledge_name);
    ::RPCImgRecong::WordWiki __ret;
    bool __ok = __result->__wait();
    try
    {
        if(!__ok)
        {
            try
            {
                __result->__throwUserException();
            }
            catch(const ::Ice::UserException& __ex)
            {
                throw ::Ice::UnknownUserException(__FILE__, __LINE__, __ex.ice_name());
            }
        }
        ::IceInternal::BasicStream* __is = __result->__startReadParams();
        __is->read(__ret);
        __result->__endReadParams();
        return __ret;
    }
    catch(const ::Ice::LocalException& ex)
    {
        __result->__getObserver().failed(ex.ice_name());
        throw;
    }
}

::RPCImgRecong::ListString
IceProxy::RPCImgRecong::ImgRetrieval::wordSearch(const ::RPCImgRecong::DictStr2Str& mapArg, const ::Ice::Context* __ctx)
{
    ::IceInternal::InvocationObserver __observer(this, __RPCImgRecong__ImgRetrieval__wordSearch_name, __ctx);
    int __cnt = 0;
    while(true)
    {
        ::IceInternal::Handle< ::IceDelegate::Ice::Object> __delBase;
        try
        {
            __checkTwowayOnly(__RPCImgRecong__ImgRetrieval__wordSearch_name);
            __delBase = __getDelegate(false);
            ::IceDelegate::RPCImgRecong::ImgRetrieval* __del = dynamic_cast< ::IceDelegate::RPCImgRecong::ImgRetrieval*>(__delBase.get());
            return __del->wordSearch(mapArg, __ctx, __observer);
        }
        catch(const ::IceInternal::LocalExceptionWrapper& __ex)
        {
            __handleExceptionWrapper(__delBase, __ex, __observer);
        }
        catch(const ::Ice::LocalException& __ex)
        {
            __handleException(__delBase, __ex, true, __cnt, __observer);
        }
    }
}

::Ice::AsyncResultPtr
IceProxy::RPCImgRecong::ImgRetrieval::begin_wordSearch(const ::RPCImgRecong::DictStr2Str& mapArg, const ::Ice::Context* __ctx, const ::IceInternal::CallbackBasePtr& __del, const ::Ice::LocalObjectPtr& __cookie)
{
    __checkAsyncTwowayOnly(__RPCImgRecong__ImgRetrieval__wordSearch_name);
    ::IceInternal::OutgoingAsyncPtr __result = new ::IceInternal::OutgoingAsync(this, __RPCImgRecong__ImgRetrieval__wordSearch_name, __del, __cookie);
    try
    {
        __result->__prepare(__RPCImgRecong__ImgRetrieval__wordSearch_name, ::Ice::Normal, __ctx);
        ::IceInternal::BasicStream* __os = __result->__startWriteParams(::Ice::DefaultFormat);
        __os->write(mapArg);
        __result->__endWriteParams();
        __result->__send(true);
    }
    catch(const ::Ice::LocalException& __ex)
    {
        __result->__exceptionAsync(__ex);
    }
    return __result;
}

::RPCImgRecong::ListString
IceProxy::RPCImgRecong::ImgRetrieval::end_wordSearch(const ::Ice::AsyncResultPtr& __result)
{
    ::Ice::AsyncResult::__check(__result, this, __RPCImgRecong__ImgRetrieval__wordSearch_name);
    ::RPCImgRecong::ListString __ret;
    bool __ok = __result->__wait();
    try
    {
        if(!__ok)
        {
            try
            {
                __result->__throwUserException();
            }
            catch(const ::Ice::UserException& __ex)
            {
                throw ::Ice::UnknownUserException(__FILE__, __LINE__, __ex.ice_name());
            }
        }
        ::IceInternal::BasicStream* __is = __result->__startReadParams();
        __is->read(__ret);
        __result->__endReadParams();
        return __ret;
    }
    catch(const ::Ice::LocalException& ex)
    {
        __result->__getObserver().failed(ex.ice_name());
        throw;
    }
}

::RPCImgRecong::ImgRes
IceProxy::RPCImgRecong::ImgRetrieval::wordSearchImg(const ::RPCImgRecong::DictStr2Str& mapArg, const ::Ice::Context* __ctx)
{
    ::IceInternal::InvocationObserver __observer(this, __RPCImgRecong__ImgRetrieval__wordSearchImg_name, __ctx);
    int __cnt = 0;
    while(true)
    {
        ::IceInternal::Handle< ::IceDelegate::Ice::Object> __delBase;
        try
        {
            __checkTwowayOnly(__RPCImgRecong__ImgRetrieval__wordSearchImg_name);
            __delBase = __getDelegate(false);
            ::IceDelegate::RPCImgRecong::ImgRetrieval* __del = dynamic_cast< ::IceDelegate::RPCImgRecong::ImgRetrieval*>(__delBase.get());
            return __del->wordSearchImg(mapArg, __ctx, __observer);
        }
        catch(const ::IceInternal::LocalExceptionWrapper& __ex)
        {
            __handleExceptionWrapper(__delBase, __ex, __observer);
        }
        catch(const ::Ice::LocalException& __ex)
        {
            __handleException(__delBase, __ex, true, __cnt, __observer);
        }
    }
}

::Ice::AsyncResultPtr
IceProxy::RPCImgRecong::ImgRetrieval::begin_wordSearchImg(const ::RPCImgRecong::DictStr2Str& mapArg, const ::Ice::Context* __ctx, const ::IceInternal::CallbackBasePtr& __del, const ::Ice::LocalObjectPtr& __cookie)
{
    __checkAsyncTwowayOnly(__RPCImgRecong__ImgRetrieval__wordSearchImg_name);
    ::IceInternal::OutgoingAsyncPtr __result = new ::IceInternal::OutgoingAsync(this, __RPCImgRecong__ImgRetrieval__wordSearchImg_name, __del, __cookie);
    try
    {
        __result->__prepare(__RPCImgRecong__ImgRetrieval__wordSearchImg_name, ::Ice::Normal, __ctx);
        ::IceInternal::BasicStream* __os = __result->__startWriteParams(::Ice::DefaultFormat);
        __os->write(mapArg);
        __result->__endWriteParams();
        __result->__send(true);
    }
    catch(const ::Ice::LocalException& __ex)
    {
        __result->__exceptionAsync(__ex);
    }
    return __result;
}

::RPCImgRecong::ImgRes
IceProxy::RPCImgRecong::ImgRetrieval::end_wordSearchImg(const ::Ice::AsyncResultPtr& __result)
{
    ::Ice::AsyncResult::__check(__result, this, __RPCImgRecong__ImgRetrieval__wordSearchImg_name);
    ::RPCImgRecong::ImgRes __ret;
    bool __ok = __result->__wait();
    try
    {
        if(!__ok)
        {
            try
            {
                __result->__throwUserException();
            }
            catch(const ::Ice::UserException& __ex)
            {
                throw ::Ice::UnknownUserException(__FILE__, __LINE__, __ex.ice_name());
            }
        }
        ::IceInternal::BasicStream* __is = __result->__startReadParams();
        __is->read(__ret);
        __result->__endReadParams();
        return __ret;
    }
    catch(const ::Ice::LocalException& ex)
    {
        __result->__getObserver().failed(ex.ice_name());
        throw;
    }
}

::RPCImgRecong::ImgRes
IceProxy::RPCImgRecong::ImgRetrieval::imgSearch(const ::RPCImgRecong::DictStr2Str& mapArg, const ::Ice::Context* __ctx)
{
    ::IceInternal::InvocationObserver __observer(this, __RPCImgRecong__ImgRetrieval__imgSearch_name, __ctx);
    int __cnt = 0;
    while(true)
    {
        ::IceInternal::Handle< ::IceDelegate::Ice::Object> __delBase;
        try
        {
            __checkTwowayOnly(__RPCImgRecong__ImgRetrieval__imgSearch_name);
            __delBase = __getDelegate(false);
            ::IceDelegate::RPCImgRecong::ImgRetrieval* __del = dynamic_cast< ::IceDelegate::RPCImgRecong::ImgRetrieval*>(__delBase.get());
            return __del->imgSearch(mapArg, __ctx, __observer);
        }
        catch(const ::IceInternal::LocalExceptionWrapper& __ex)
        {
            __handleExceptionWrapper(__delBase, __ex, __observer);
        }
        catch(const ::Ice::LocalException& __ex)
        {
            __handleException(__delBase, __ex, true, __cnt, __observer);
        }
    }
}

::Ice::AsyncResultPtr
IceProxy::RPCImgRecong::ImgRetrieval::begin_imgSearch(const ::RPCImgRecong::DictStr2Str& mapArg, const ::Ice::Context* __ctx, const ::IceInternal::CallbackBasePtr& __del, const ::Ice::LocalObjectPtr& __cookie)
{
    __checkAsyncTwowayOnly(__RPCImgRecong__ImgRetrieval__imgSearch_name);
    ::IceInternal::OutgoingAsyncPtr __result = new ::IceInternal::OutgoingAsync(this, __RPCImgRecong__ImgRetrieval__imgSearch_name, __del, __cookie);
    try
    {
        __result->__prepare(__RPCImgRecong__ImgRetrieval__imgSearch_name, ::Ice::Normal, __ctx);
        ::IceInternal::BasicStream* __os = __result->__startWriteParams(::Ice::DefaultFormat);
        __os->write(mapArg);
        __result->__endWriteParams();
        __result->__send(true);
    }
    catch(const ::Ice::LocalException& __ex)
    {
        __result->__exceptionAsync(__ex);
    }
    return __result;
}

::RPCImgRecong::ImgRes
IceProxy::RPCImgRecong::ImgRetrieval::end_imgSearch(const ::Ice::AsyncResultPtr& __result)
{
    ::Ice::AsyncResult::__check(__result, this, __RPCImgRecong__ImgRetrieval__imgSearch_name);
    ::RPCImgRecong::ImgRes __ret;
    bool __ok = __result->__wait();
    try
    {
        if(!__ok)
        {
            try
            {
                __result->__throwUserException();
            }
            catch(const ::Ice::UserException& __ex)
            {
                throw ::Ice::UnknownUserException(__FILE__, __LINE__, __ex.ice_name());
            }
        }
        ::IceInternal::BasicStream* __is = __result->__startReadParams();
        __is->read(__ret);
        __result->__endReadParams();
        return __ret;
    }
    catch(const ::Ice::LocalException& ex)
    {
        __result->__getObserver().failed(ex.ice_name());
        throw;
    }
}

const ::std::string&
IceProxy::RPCImgRecong::ImgRetrieval::ice_staticId()
{
    return ::RPCImgRecong::ImgRetrieval::ice_staticId();
}

::IceInternal::Handle< ::IceDelegateM::Ice::Object>
IceProxy::RPCImgRecong::ImgRetrieval::__createDelegateM()
{
    return ::IceInternal::Handle< ::IceDelegateM::Ice::Object>(new ::IceDelegateM::RPCImgRecong::ImgRetrieval);
}

::IceInternal::Handle< ::IceDelegateD::Ice::Object>
IceProxy::RPCImgRecong::ImgRetrieval::__createDelegateD()
{
    return ::IceInternal::Handle< ::IceDelegateD::Ice::Object>(new ::IceDelegateD::RPCImgRecong::ImgRetrieval);
}

::IceProxy::Ice::Object*
IceProxy::RPCImgRecong::ImgRetrieval::__newInstance() const
{
    return new ImgRetrieval;
}

::RPCImgRecong::WordWiki
IceDelegateM::RPCImgRecong::ImgRetrieval::wordGetKnowledge(const ::std::string& word, const ::Ice::Context* __context, ::IceInternal::InvocationObserver& __observer)
{
    ::IceInternal::Outgoing __og(__handler.get(), __RPCImgRecong__ImgRetrieval__wordGetKnowledge_name, ::Ice::Normal, __context, __observer);
    try
    {
        ::IceInternal::BasicStream* __os = __og.startWriteParams(::Ice::DefaultFormat);
        __os->write(word);
        __og.endWriteParams();
    }
    catch(const ::Ice::LocalException& __ex)
    {
        __og.abort(__ex);
    }
    bool __ok = __og.invoke();
    ::RPCImgRecong::WordWiki __ret;
    try
    {
        if(!__ok)
        {
            try
            {
                __og.throwUserException();
            }
            catch(const ::Ice::UserException& __ex)
            {
                ::Ice::UnknownUserException __uue(__FILE__, __LINE__, __ex.ice_name());
                throw __uue;
            }
        }
        ::IceInternal::BasicStream* __is = __og.startReadParams();
        __is->read(__ret);
        __og.endReadParams();
        return __ret;
    }
    catch(const ::Ice::LocalException& __ex)
    {
        throw ::IceInternal::LocalExceptionWrapper(__ex, false);
    }
}

::RPCImgRecong::ListString
IceDelegateM::RPCImgRecong::ImgRetrieval::wordSearch(const ::RPCImgRecong::DictStr2Str& mapArg, const ::Ice::Context* __context, ::IceInternal::InvocationObserver& __observer)
{
    ::IceInternal::Outgoing __og(__handler.get(), __RPCImgRecong__ImgRetrieval__wordSearch_name, ::Ice::Normal, __context, __observer);
    try
    {
        ::IceInternal::BasicStream* __os = __og.startWriteParams(::Ice::DefaultFormat);
        __os->write(mapArg);
        __og.endWriteParams();
    }
    catch(const ::Ice::LocalException& __ex)
    {
        __og.abort(__ex);
    }
    bool __ok = __og.invoke();
    ::RPCImgRecong::ListString __ret;
    try
    {
        if(!__ok)
        {
            try
            {
                __og.throwUserException();
            }
            catch(const ::Ice::UserException& __ex)
            {
                ::Ice::UnknownUserException __uue(__FILE__, __LINE__, __ex.ice_name());
                throw __uue;
            }
        }
        ::IceInternal::BasicStream* __is = __og.startReadParams();
        __is->read(__ret);
        __og.endReadParams();
        return __ret;
    }
    catch(const ::Ice::LocalException& __ex)
    {
        throw ::IceInternal::LocalExceptionWrapper(__ex, false);
    }
}

::RPCImgRecong::ImgRes
IceDelegateM::RPCImgRecong::ImgRetrieval::wordSearchImg(const ::RPCImgRecong::DictStr2Str& mapArg, const ::Ice::Context* __context, ::IceInternal::InvocationObserver& __observer)
{
    ::IceInternal::Outgoing __og(__handler.get(), __RPCImgRecong__ImgRetrieval__wordSearchImg_name, ::Ice::Normal, __context, __observer);
    try
    {
        ::IceInternal::BasicStream* __os = __og.startWriteParams(::Ice::DefaultFormat);
        __os->write(mapArg);
        __og.endWriteParams();
    }
    catch(const ::Ice::LocalException& __ex)
    {
        __og.abort(__ex);
    }
    bool __ok = __og.invoke();
    ::RPCImgRecong::ImgRes __ret;
    try
    {
        if(!__ok)
        {
            try
            {
                __og.throwUserException();
            }
            catch(const ::Ice::UserException& __ex)
            {
                ::Ice::UnknownUserException __uue(__FILE__, __LINE__, __ex.ice_name());
                throw __uue;
            }
        }
        ::IceInternal::BasicStream* __is = __og.startReadParams();
        __is->read(__ret);
        __og.endReadParams();
        return __ret;
    }
    catch(const ::Ice::LocalException& __ex)
    {
        throw ::IceInternal::LocalExceptionWrapper(__ex, false);
    }
}

::RPCImgRecong::ImgRes
IceDelegateM::RPCImgRecong::ImgRetrieval::imgSearch(const ::RPCImgRecong::DictStr2Str& mapArg, const ::Ice::Context* __context, ::IceInternal::InvocationObserver& __observer)
{
    ::IceInternal::Outgoing __og(__handler.get(), __RPCImgRecong__ImgRetrieval__imgSearch_name, ::Ice::Normal, __context, __observer);
    try
    {
        ::IceInternal::BasicStream* __os = __og.startWriteParams(::Ice::DefaultFormat);
        __os->write(mapArg);
        __og.endWriteParams();
    }
    catch(const ::Ice::LocalException& __ex)
    {
        __og.abort(__ex);
    }
    bool __ok = __og.invoke();
    ::RPCImgRecong::ImgRes __ret;
    try
    {
        if(!__ok)
        {
            try
            {
                __og.throwUserException();
            }
            catch(const ::Ice::UserException& __ex)
            {
                ::Ice::UnknownUserException __uue(__FILE__, __LINE__, __ex.ice_name());
                throw __uue;
            }
        }
        ::IceInternal::BasicStream* __is = __og.startReadParams();
        __is->read(__ret);
        __og.endReadParams();
        return __ret;
    }
    catch(const ::Ice::LocalException& __ex)
    {
        throw ::IceInternal::LocalExceptionWrapper(__ex, false);
    }
}

::RPCImgRecong::WordWiki
IceDelegateD::RPCImgRecong::ImgRetrieval::wordGetKnowledge(const ::std::string& word, const ::Ice::Context* __context, ::IceInternal::InvocationObserver&)
{
    class _DirectI : public ::IceInternal::Direct
    {
    public:

        _DirectI(::RPCImgRecong::WordWiki& __result, const ::std::string& __p_word, const ::Ice::Current& __current) : 
            ::IceInternal::Direct(__current),
            _result(__result),
            _m_word(__p_word)
        {
        }
        
        virtual ::Ice::DispatchStatus
        run(::Ice::Object* object)
        {
            ::RPCImgRecong::ImgRetrieval* servant = dynamic_cast< ::RPCImgRecong::ImgRetrieval*>(object);
            if(!servant)
            {
                throw ::Ice::OperationNotExistException(__FILE__, __LINE__, _current.id, _current.facet, _current.operation);
            }
            _result = servant->wordGetKnowledge(_m_word, _current);
            return ::Ice::DispatchOK;
        }
        
    private:
        
        ::RPCImgRecong::WordWiki& _result;
        const ::std::string& _m_word;
    };
    
    ::Ice::Current __current;
    __initCurrent(__current, __RPCImgRecong__ImgRetrieval__wordGetKnowledge_name, ::Ice::Normal, __context);
    ::RPCImgRecong::WordWiki __result;
    try
    {
        _DirectI __direct(__result, word, __current);
        try
        {
            __direct.getServant()->__collocDispatch(__direct);
        }
        catch(...)
        {
            __direct.destroy();
            throw;
        }
        __direct.destroy();
    }
    catch(const ::Ice::SystemException&)
    {
        throw;
    }
    catch(const ::IceInternal::LocalExceptionWrapper&)
    {
        throw;
    }
    catch(const ::std::exception& __ex)
    {
        ::IceInternal::LocalExceptionWrapper::throwWrapper(__ex);
    }
    catch(...)
    {
        throw ::IceInternal::LocalExceptionWrapper(::Ice::UnknownException(__FILE__, __LINE__, "unknown c++ exception"), false);
    }
    return __result;
}

::RPCImgRecong::ListString
IceDelegateD::RPCImgRecong::ImgRetrieval::wordSearch(const ::RPCImgRecong::DictStr2Str& mapArg, const ::Ice::Context* __context, ::IceInternal::InvocationObserver&)
{
    class _DirectI : public ::IceInternal::Direct
    {
    public:

        _DirectI(::RPCImgRecong::ListString& __result, const ::RPCImgRecong::DictStr2Str& __p_mapArg, const ::Ice::Current& __current) : 
            ::IceInternal::Direct(__current),
            _result(__result),
            _m_mapArg(__p_mapArg)
        {
        }
        
        virtual ::Ice::DispatchStatus
        run(::Ice::Object* object)
        {
            ::RPCImgRecong::ImgRetrieval* servant = dynamic_cast< ::RPCImgRecong::ImgRetrieval*>(object);
            if(!servant)
            {
                throw ::Ice::OperationNotExistException(__FILE__, __LINE__, _current.id, _current.facet, _current.operation);
            }
            _result = servant->wordSearch(_m_mapArg, _current);
            return ::Ice::DispatchOK;
        }
        
    private:
        
        ::RPCImgRecong::ListString& _result;
        const ::RPCImgRecong::DictStr2Str& _m_mapArg;
    };
    
    ::Ice::Current __current;
    __initCurrent(__current, __RPCImgRecong__ImgRetrieval__wordSearch_name, ::Ice::Normal, __context);
    ::RPCImgRecong::ListString __result;
    try
    {
        _DirectI __direct(__result, mapArg, __current);
        try
        {
            __direct.getServant()->__collocDispatch(__direct);
        }
        catch(...)
        {
            __direct.destroy();
            throw;
        }
        __direct.destroy();
    }
    catch(const ::Ice::SystemException&)
    {
        throw;
    }
    catch(const ::IceInternal::LocalExceptionWrapper&)
    {
        throw;
    }
    catch(const ::std::exception& __ex)
    {
        ::IceInternal::LocalExceptionWrapper::throwWrapper(__ex);
    }
    catch(...)
    {
        throw ::IceInternal::LocalExceptionWrapper(::Ice::UnknownException(__FILE__, __LINE__, "unknown c++ exception"), false);
    }
    return __result;
}

::RPCImgRecong::ImgRes
IceDelegateD::RPCImgRecong::ImgRetrieval::wordSearchImg(const ::RPCImgRecong::DictStr2Str& mapArg, const ::Ice::Context* __context, ::IceInternal::InvocationObserver&)
{
    class _DirectI : public ::IceInternal::Direct
    {
    public:

        _DirectI(::RPCImgRecong::ImgRes& __result, const ::RPCImgRecong::DictStr2Str& __p_mapArg, const ::Ice::Current& __current) : 
            ::IceInternal::Direct(__current),
            _result(__result),
            _m_mapArg(__p_mapArg)
        {
        }
        
        virtual ::Ice::DispatchStatus
        run(::Ice::Object* object)
        {
            ::RPCImgRecong::ImgRetrieval* servant = dynamic_cast< ::RPCImgRecong::ImgRetrieval*>(object);
            if(!servant)
            {
                throw ::Ice::OperationNotExistException(__FILE__, __LINE__, _current.id, _current.facet, _current.operation);
            }
            _result = servant->wordSearchImg(_m_mapArg, _current);
            return ::Ice::DispatchOK;
        }
        
    private:
        
        ::RPCImgRecong::ImgRes& _result;
        const ::RPCImgRecong::DictStr2Str& _m_mapArg;
    };
    
    ::Ice::Current __current;
    __initCurrent(__current, __RPCImgRecong__ImgRetrieval__wordSearchImg_name, ::Ice::Normal, __context);
    ::RPCImgRecong::ImgRes __result;
    try
    {
        _DirectI __direct(__result, mapArg, __current);
        try
        {
            __direct.getServant()->__collocDispatch(__direct);
        }
        catch(...)
        {
            __direct.destroy();
            throw;
        }
        __direct.destroy();
    }
    catch(const ::Ice::SystemException&)
    {
        throw;
    }
    catch(const ::IceInternal::LocalExceptionWrapper&)
    {
        throw;
    }
    catch(const ::std::exception& __ex)
    {
        ::IceInternal::LocalExceptionWrapper::throwWrapper(__ex);
    }
    catch(...)
    {
        throw ::IceInternal::LocalExceptionWrapper(::Ice::UnknownException(__FILE__, __LINE__, "unknown c++ exception"), false);
    }
    return __result;
}

::RPCImgRecong::ImgRes
IceDelegateD::RPCImgRecong::ImgRetrieval::imgSearch(const ::RPCImgRecong::DictStr2Str& mapArg, const ::Ice::Context* __context, ::IceInternal::InvocationObserver&)
{
    class _DirectI : public ::IceInternal::Direct
    {
    public:

        _DirectI(::RPCImgRecong::ImgRes& __result, const ::RPCImgRecong::DictStr2Str& __p_mapArg, const ::Ice::Current& __current) : 
            ::IceInternal::Direct(__current),
            _result(__result),
            _m_mapArg(__p_mapArg)
        {
        }
        
        virtual ::Ice::DispatchStatus
        run(::Ice::Object* object)
        {
            ::RPCImgRecong::ImgRetrieval* servant = dynamic_cast< ::RPCImgRecong::ImgRetrieval*>(object);
            if(!servant)
            {
                throw ::Ice::OperationNotExistException(__FILE__, __LINE__, _current.id, _current.facet, _current.operation);
            }
            _result = servant->imgSearch(_m_mapArg, _current);
            return ::Ice::DispatchOK;
        }
        
    private:
        
        ::RPCImgRecong::ImgRes& _result;
        const ::RPCImgRecong::DictStr2Str& _m_mapArg;
    };
    
    ::Ice::Current __current;
    __initCurrent(__current, __RPCImgRecong__ImgRetrieval__imgSearch_name, ::Ice::Normal, __context);
    ::RPCImgRecong::ImgRes __result;
    try
    {
        _DirectI __direct(__result, mapArg, __current);
        try
        {
            __direct.getServant()->__collocDispatch(__direct);
        }
        catch(...)
        {
            __direct.destroy();
            throw;
        }
        __direct.destroy();
    }
    catch(const ::Ice::SystemException&)
    {
        throw;
    }
    catch(const ::IceInternal::LocalExceptionWrapper&)
    {
        throw;
    }
    catch(const ::std::exception& __ex)
    {
        ::IceInternal::LocalExceptionWrapper::throwWrapper(__ex);
    }
    catch(...)
    {
        throw ::IceInternal::LocalExceptionWrapper(::Ice::UnknownException(__FILE__, __LINE__, "unknown c++ exception"), false);
    }
    return __result;
}

::Ice::Object* RPCImgRecong::upCast(::RPCImgRecong::ImgRetrieval* p) { return p; }

namespace
{
const ::std::string __RPCImgRecong__ImgRetrieval_ids[2] =
{
    "::Ice::Object",
    "::RPCImgRecong::ImgRetrieval"
};

}

bool
RPCImgRecong::ImgRetrieval::ice_isA(const ::std::string& _s, const ::Ice::Current&) const
{
    return ::std::binary_search(__RPCImgRecong__ImgRetrieval_ids, __RPCImgRecong__ImgRetrieval_ids + 2, _s);
}

::std::vector< ::std::string>
RPCImgRecong::ImgRetrieval::ice_ids(const ::Ice::Current&) const
{
    return ::std::vector< ::std::string>(&__RPCImgRecong__ImgRetrieval_ids[0], &__RPCImgRecong__ImgRetrieval_ids[2]);
}

const ::std::string&
RPCImgRecong::ImgRetrieval::ice_id(const ::Ice::Current&) const
{
    return __RPCImgRecong__ImgRetrieval_ids[1];
}

const ::std::string&
RPCImgRecong::ImgRetrieval::ice_staticId()
{
    return __RPCImgRecong__ImgRetrieval_ids[1];
}

::Ice::DispatchStatus
RPCImgRecong::ImgRetrieval::___wordGetKnowledge(::IceInternal::Incoming& __inS, const ::Ice::Current& __current)
{
    __checkMode(::Ice::Normal, __current.mode);
    ::IceInternal::BasicStream* __is = __inS.startReadParams();
    ::std::string word;
    __is->read(word);
    __inS.endReadParams();
    ::RPCImgRecong::WordWiki __ret = wordGetKnowledge(word, __current);
    ::IceInternal::BasicStream* __os = __inS.__startWriteParams(::Ice::DefaultFormat);
    __os->write(__ret);
    __inS.__endWriteParams(true);
    return ::Ice::DispatchOK;
}

::Ice::DispatchStatus
RPCImgRecong::ImgRetrieval::___wordSearch(::IceInternal::Incoming& __inS, const ::Ice::Current& __current)
{
    __checkMode(::Ice::Normal, __current.mode);
    ::IceInternal::BasicStream* __is = __inS.startReadParams();
    ::RPCImgRecong::DictStr2Str mapArg;
    __is->read(mapArg);
    __inS.endReadParams();
    ::RPCImgRecong::ListString __ret = wordSearch(mapArg, __current);
    ::IceInternal::BasicStream* __os = __inS.__startWriteParams(::Ice::DefaultFormat);
    __os->write(__ret);
    __inS.__endWriteParams(true);
    return ::Ice::DispatchOK;
}

::Ice::DispatchStatus
RPCImgRecong::ImgRetrieval::___wordSearchImg(::IceInternal::Incoming& __inS, const ::Ice::Current& __current)
{
    __checkMode(::Ice::Normal, __current.mode);
    ::IceInternal::BasicStream* __is = __inS.startReadParams();
    ::RPCImgRecong::DictStr2Str mapArg;
    __is->read(mapArg);
    __inS.endReadParams();
    ::RPCImgRecong::ImgRes __ret = wordSearchImg(mapArg, __current);
    ::IceInternal::BasicStream* __os = __inS.__startWriteParams(::Ice::DefaultFormat);
    __os->write(__ret);
    __inS.__endWriteParams(true);
    return ::Ice::DispatchOK;
}

::Ice::DispatchStatus
RPCImgRecong::ImgRetrieval::___imgSearch(::IceInternal::Incoming& __inS, const ::Ice::Current& __current)
{
    __checkMode(::Ice::Normal, __current.mode);
    ::IceInternal::BasicStream* __is = __inS.startReadParams();
    ::RPCImgRecong::DictStr2Str mapArg;
    __is->read(mapArg);
    __inS.endReadParams();
    ::RPCImgRecong::ImgRes __ret = imgSearch(mapArg, __current);
    ::IceInternal::BasicStream* __os = __inS.__startWriteParams(::Ice::DefaultFormat);
    __os->write(__ret);
    __inS.__endWriteParams(true);
    return ::Ice::DispatchOK;
}

namespace
{
const ::std::string __RPCImgRecong__ImgRetrieval_all[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "imgSearch",
    "wordGetKnowledge",
    "wordSearch",
    "wordSearchImg"
};

}

::Ice::DispatchStatus
RPCImgRecong::ImgRetrieval::__dispatch(::IceInternal::Incoming& in, const ::Ice::Current& current)
{
    ::std::pair< const ::std::string*, const ::std::string*> r = ::std::equal_range(__RPCImgRecong__ImgRetrieval_all, __RPCImgRecong__ImgRetrieval_all + 8, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - __RPCImgRecong__ImgRetrieval_all)
    {
        case 0:
        {
            return ___ice_id(in, current);
        }
        case 1:
        {
            return ___ice_ids(in, current);
        }
        case 2:
        {
            return ___ice_isA(in, current);
        }
        case 3:
        {
            return ___ice_ping(in, current);
        }
        case 4:
        {
            return ___imgSearch(in, current);
        }
        case 5:
        {
            return ___wordGetKnowledge(in, current);
        }
        case 6:
        {
            return ___wordSearch(in, current);
        }
        case 7:
        {
            return ___wordSearchImg(in, current);
        }
    }

    assert(false);
    throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
}

void
RPCImgRecong::ImgRetrieval::__writeImpl(::IceInternal::BasicStream* __os) const
{
    __os->startWriteSlice(ice_staticId(), -1, true);
    __os->endWriteSlice();
}

void
RPCImgRecong::ImgRetrieval::__readImpl(::IceInternal::BasicStream* __is)
{
    __is->startReadSlice();
    __is->endReadSlice();
}

void 
RPCImgRecong::__patch(ImgRetrievalPtr& handle, const ::Ice::ObjectPtr& v)
{
    handle = ::RPCImgRecong::ImgRetrievalPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(::RPCImgRecong::ImgRetrieval::ice_staticId(), v);
    }
}